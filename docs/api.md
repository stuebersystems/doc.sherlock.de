# Die CONFIRE SHERLOCK API

Die CONFIRE SHERLOCK API ist eine DLL (Dynamic Link Libary), die sich in nahezu jede Programmierumgebung integrieren lässt. Die API exportiert Funktionen, die den wesentlichen Teil der Funktionalität der CONFIRE SHERLOCK STEUERUNG aus der Windows-Systemsteuerung bereitstellt.

Folgende Integrationsszenarien sind mit der API möglich:

* Programmieren einer Kommandozeilenanwendung, um CONFIRE SHERLOCK per Kommandozeile fernzubedienen. Die [CONFIRE SHERLOCK CONSOLE] ist ein Beispiel für solch eine Kommandozeilenanwendung.

* Programmieren eines PowerShell-Cmdlets, um CONFIRE SHERLOCK per PowerShell Skript fernzubedienen.

* Einbinden der API in Software-Management-System, um CONFIRE SHERLOCK im Kontext von Softwareverteilung bzw. Softwaresteuerung fernzubedienen.

Einige Gründe, um CONFIRE SHERLOCK fernzubedienen:

* Automatisiertes Aus- und Anschalten des Festplattenschutzes zu einer geplanten Uhrzeit, um Windows-Service-Updates oder andere Software-Updates einspielen zu können.

* Automatisiertes Konfigurieren von CONFIRE SHERLOCK im Rahmen einer Image-basierten Neuinstallation von Computern im Computer-Kabinett.

Die Schnittstellenbeschreibung der API ergibt sich aus dem Quellcode der CONFIRE SHERLOCK CONSOLE auf [GitHub].

[CONFIRE SHERLOCK CONSOLE]: console.md
[GitHub]: https://github.com/stuebersystems/sherlock.console