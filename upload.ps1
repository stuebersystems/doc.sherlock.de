# Uploads local artifact (folder or file) to WebDAV

# Last updated: 16.03.2019
# Version: 0.1.0

# Copyright (c) 2019 STÜBER SYSTEMS 

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.

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
