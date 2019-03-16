# Uploads local artifact (folder or file) to WebDAV
#
# Author: STÜBER SYSTEMS GmbH
# Last updated: 16.03.2019
# Version: 0.1.0

param
(
	[parameter(mandatory=$true,position=0,HelpMessage="Path to file or folder")]
	[ValidateNotNullOrEmpty()]
	[string] 
	$artifact,
	
	[parameter(mandatory=$false,position=1,HelpMessage="Files or folders to be excluded (if artifact is a folder)")]
	[string[]]
	$excludes = @(),
	
	[parameter(mandatory=$true,position=2,HelpMessage="Url of WebDAV folder")]
	[ValidateNotNullOrEmpty()]
	[string]
	$WebDAVUrl,
	
	[parameter(mandatory=$true,position=3,HelpMessage="Username for WebDAV auth")]
	[ValidateNotNullOrEmpty()]
	[string]
	$WebDAVUserName,
	
	[parameter(mandatory=$true,position=4,HelpMessage="Password for WebDAV auth")]
	[ValidateNotNullOrEmpty()]
	[string]
	$WebDAVPassword
)

function CreateRemoteFolderIfNotExists([System.Uri] $uri)
{
	Write-Host [PROPFIND] $uri.AbsolutePath 

	$req = [System.Net.HttpWebRequest]::Create($uri)
	$req.Credentials = New-Object System.Net.NetworkCredential($WebDAVUsername, $WebDAVPassword)  
	$req.Method = "PROPFIND"
	$req.Headers.Add("Depth", "1");

	try
	{
		$res = $req.GetResponse()
	
		if ($res.StatusCode -eq 207) 
		{
			Write-Host [PROPFIND] Found
		} else
		{
			Write-Host [PROPFIND] Unknown status
		}
	}
	catch [System.Net.WebException]
	{
		$res = $_.Exception.Response
		
		if ($res.StatusCode -eq 404) 
		{
			Write-Host [PROPFIND] Not found
			Write-Host [MKCOL] $uri.AbsolutePath 

			$req = [System.Net.HttpWebRequest]::Create($uri)
			$req.Credentials = New-Object System.Net.NetworkCredential($WebDAVUsername, $WebDAVPassword)  
			$req.Method = "MKCOL"
			$res = $req.GetResponse()

			Write-Host [MKCOL] Sucessfull
		}
		else
		{
			throw
		}
	}
}

function UploadFile([System.Uri] $uri, [string] $localFolder)
{
	Write-Host [PUT] $localPath to $uri.AbsolutePath

	$webclient = New-Object System.Net.WebClient 
	$webclient.Credentials = New-Object System.Net.NetworkCredential($WebDAVUsername, $WebDAVPassword)  
	$webclient.UploadFile($uri, "PUT", $localPath) 

	Write-Host [PUT] Successfull
}

function UploadArtifact([System.Uri] $uri, [string] $localFolder, [string] $artifact)
{
	$localPath = (Join-Path $localFolder $artifact)
	
	$uri = New-Object System.Uri($uri.AbsoluteUri.Trim("/") + "/" + $artifact)
	
	if (Test-Path $localPath -PathType Container)
	{
		CreateRemoteFolderIfNotExists $uri;

		foreach ($item in Get-ChildItem $localPath)
		{
			if ($excludes | Where {$item -like $_}) { continue }

			UploadArtifact $uri $localPath $item.Name
		}
	}
	else
	{
		UploadFile $uri [string]::Empty $localPath 
	}
} 

try
{

	# Establishes and enforces coding rules 
	set-strictmode -version latest

	# Powershell should stop on erros
	$ErrorActionPreference = 'Stop'

	# Start processing...
	UploadArtifact $WebDAVUrl $artifact
}
catch
{
	Write-Host $_.Exception.Message -ForegroundColor Red
	if ($? -and (test-path variable:LastExitCode) -and ($LastExitCode -gt 0)) { exit $LastExitCode } else { exit 1 }
}
