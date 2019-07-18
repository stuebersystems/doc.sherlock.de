# Die CONFIRE SHERLOCK CONSOLE

Die CONFIRE SHERLOCK CONSOLE ist eine Kommandozeilenanwendung, die automatisch bei jeder Installation von CONFIRE SHERLOCK mitinstalliert wird. Die CONFIRE SHERLOCK CONSOLE kann z.B. im Rahmen von administrativen Skripten eingesetzt werden, um CONFIRE SHERLOCK fernzubedienen. Zudem ist die CONFIRE SHERLOCK CONSOLE Open Source, d.h. der gesamte Quellcode ist auf [GitHub](https://github.com/stuebersystems/sherlock.console) gehostet und dient zugleich als technische Dokumentation der [CONFIRE SHERLOCK API].

Zum Starten der CONFIRE SHERLOCK CONSOLE öffnen Sie die Windows-Kommandozeile und tippen Sie

```
cfs <command> [<parameters>...]
```

ein. Eine Reihe von Befehlen erfordert die Angabe eines API-Tokens als Parameter. Ein API-Token ist ein Schlüssel, der aus dem Administrator-Kennwort errechnet wird und in der CONFIRE SHERLOCK Steuerung erfragt werden kann.

1. Öffnen Sie die CONFIRE SHERLOCK Steuerung.
2. Wechseln Sie auf die Registerkarte “Kennwörter”.
3. Klicken Sie auf die Schaltfläche API-Token.

Folgende Befehle stehen Ihnen zur Verfügung:

## set-licenseInfo

```
set-licenseInfo <User name> <User site> <Key>
```

Importiert eine neue Lizenz. `User name` ist der Benutzername, `User site` der Standort und `Key` der Lizenzschlüssel.

Beispiel:

```
cfs set-licenseInfo "Meine Institution" "Berlin" a8abcba1ee5aa9130ff6eade72855dbd90721bf1
```

## set-licenseInfoFromFile

```
set-licenseInfoFromFile <File name>
```

Importiert eine neue Lizenz aus einer Datei. `File name` ist der Pfad zur Lizenzdatei.

Beispiel:

```
cfs set-licenseInfoFromFile "c:\Downloads\ConfireSherlock3.lic"
```

## get-protectionMode

```
get-protectionMode
```

Gibt den aktuellen Schutzstatus von CONFIRE SERHLOCK aus. Dieser Befehl hat keine Parameter.

Beispiel:

```
cfs get-protectionMode
```

## set-protectionMode

```
set-protectionMode {Off|On} <Api-Token>
```

Aktiviert bzw. deaktiviert den Schutz von CONFIRE SHERLOCK.

Beispiel \(Schutz anschalten\):

```
cfs set-protectionMode On a8abcba1ee5aa9130ff6eade72855dbd90721bf1
```

## set-adminPassword

```
set-adminPassword <New password> <Api-Token>
```

Setzt das Administrator-Kennwort neu. Achtung: Dieser Befehl hat eine Anpassung des API-Tokens zur Folge.

Beispiel:

```
cfs set-adminPassword "admin!1234" a8abcba1ee5aa9130ff6eade72855dbd90721bf1
```

## set-userPassword

```
set-userPassword <New password> <Api-Token>
```

Setzt das Benutzer-Kennwort neu.

Beispiel:

```
cfs set-userPassword "user!1234" a8abcba1ee5aa9130ff6eade72855dbd90721bf1
```

## get-config

```
get-config
```

Liefert die aktuelle Konfiguration von CONFIRE SHERLOCK zurück.

Beispiel:

```
cfs get-config
```

## set-bootMode

```
set-bootMode {DiscardChanges|KeepChanges|Inherited} <Api-Token>
```

Konfiguriert den Boot-Modus

```
cfs set-bootMode KeepChanges FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-manualOperations

```
set-manualOperations {None|DiscardChanges|ApplyChanges} <Api-Token>
```

Konfiguriert die erlaubten manuellen Operationen des Benutzers.

Beispiel:

```
cfs set-manualOperations DiscardChanges FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-autoDiscardTime

```
set-autoDiscardTime <Time> <Api-Token>
```

Konfiguriert den Tageszeitpunkt für das automatische Verwerfen von Änderungen.

Beispiel:

```
cfs set-autoDiscardTime 12:00 FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-autoDiscardWeekdays

```
set-autoDiscardWeekdays {Everyday|{Sun,Mon,Tue,Wed,Thu,Fri,Sat}} <Api-Token>
```

Konfiguriert den Tagesrhythmus für das automatische Verwerfen von Änderungen.

Beispiel:

```
cfs set-autoDiscardWeekdays Everyday FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-hideConfigCommand

```
set-hideConfigCommand {false|true} <Api-Token>
```

Konfiguriert, ob der Befehl Einstellungen ändern ausgeblendet werden soll.

Beispiel:

```
cfs set-hideConfigCommand false FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-hideRebootCommand

```
set-hideRebootCommand {false|true} <Api-Token>
```

Konfiguriert, ob der Befehl Neu starten ausgeblendet werden soll.

Beispiel:

```
cfs set-hideRebootCommand false FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-showTrayIcon

```
set-showTrayIcon {false|true} <Api-Token>
```

Konfiguriert, ob das CONFIRE SHERLOCK Symbol in der Windows-Taskleiste angezeigt werden soll.

Beispiel:

```
cfs set-showTrayIcon true FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-removableVolumesAccessMode

```
set-removableVolumesAccessMode {ReadWrite|ReadOnly|Invisible} <Api-Token>
```

Setzt den Standardmodus für externe Laufwerke.

Beispiel:

```
cfs set-removableVolumesAccessMode ReadWrite FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-fixedVolumeProtectionMode

```
set-fixedVolumeProtectionMode <Device name> <Off|On > <Api-Token>
```

Setzt den Schutzmodus einer Festplattenpartition. `Device name` ist der Name des Laufwerks. Die Liste der möglichen Namen erhält man durch Aufruf mit get-fixedVolumes.

Beispiel:

```
cfs set-fixedVolumeProtectionMode \Device\HarddiskVolume2 On FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-fixedVolumeBootMode

```
set-fixedVolumeBootMode <Device name> {DiscardChanges|KeepChanges|Inherited} <Api-Token>
```

Setzt das standardmäßige Verhalten beim Neustart einer Festplattenpartition. `Device name` ist der Name des Laufwerks. Die Liste der möglichen Namen erhält man durch Aufruf mit get-fixedVolumes.

Beispiel:

```
cfs set-fixedVolumeBootMode \Device\HarddiskVolume2 DiscardChanges FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-fixedVolumeBootAction

```
set-fixedVolumeBootAction <Device name> {NoAction|DiscardChanges|ApplyChanges} <Api-Token>
```

Setzt das Verhalten beim nächsten Neustart einer Festplattenpartition. `Device name` ist der Name des Laufwerks. Die Liste der möglichen Namen erhält man durch Aufruf mit get-fixedVolumes.

Beispiel:

```
cfs set-fixedVolumeBootAction \Device\HarddiskVolume2 DiscardChanges FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

set-fixedVolumeManualOperations

```
set-fixedVolumeManualOperations <Device name> {None|{DiscardChanges,ApplyChanges}}  <Api-Token>
```

Setzt die erlaubten manuellen Operationen einer Festplattenpartition. `Device name` ist der Name des Laufwerks. Die Liste der möglichen Namen erhält man durch Aufruf mit get-fixedVolumes.

Beispiel:

```
cfs set-fixedVolumeManualOperations \Device\HarddiskVolume2 DiscardChanges FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-fixedVolumeAutoDiscardTime

```
set-fixedVolumeAutoDiscardTime <Device name> <Time> <Api-Token>
```

Setzt den Tageszeitpunkt für das automatische Verwerfen von Änderungen einer Festplattenpartition. `Device name` ist der Name des Laufwerks. Die Liste der möglichen Namen erhält man durch Aufruf mit get-fixedVolumes.

Beispiel:

```
cfs set-fixedVolumeAutoDiscardTime \Device\HarddiskVolume2 12:00 FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-fixedVolumeAutoDiscardWeekdays

```
set-fixedVolumeAutoDiscardWeekdays <Device name> {Everyday|{Sun,Mon,Tue,Wed,Thu,Fri,Sat}} <Api-Token>
```

Setzt das Tagesintervall für das automatische Verwerfen von Änderungen einer Festplattenpartition. `Device name` ist der Name des Laufwerks. Die Liste der möglichen Namen erhält man durch Aufruf mit get-fixedVolumes.

Beispiel:

```
cfs set-fixedVolumeAutoDiscardWeekdays \Device\HarddiskVolume2 Mon,Wed,Fri FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## set-removableVolumeAccessMode

```
set-removableVolumeAccessMode <Device name> {ReadWrite|ReadOnly|Invisible|Inherited} <Api-Token>
```

Setzt den Zugriffsmodus für ein externes Laufwerk. `Device name` ist der Name des Laufwerks. Die Liste der möglichen Namen erhält man durch Aufruf mit get-removableVolumes.

Beispiel:

```
cfs set-removableVolumeAccessMode \Device\HarddiskVolume2 Invisible FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## get-fixedVolumes

```
get-fixedVolumes
```

Liefert die Liste der Festplattenpartitionen zurück.

Beispiel:

```
cfs get-fixedVolumes
```

## get-removableVolumes

```
get-removableVolumes
```

Liefert die Liste der externen Laufwerke zurück.

Beispiel:

```
cfs get-removableVolumes
```

## allocate-swapStorage

```
allocate-swapStorage <Device name> <Swap size in MB> <Api-Token>
```

Erzeugt eine neue Auslagerungsdatei für einer Festplattenpartition. `Device name` ist der Name der Partition. Die Liste der möglichen Namen erhält man durch Aufruf mit get-fixedVolumes. `Swap size in MB` ist die Größe der Auslagerungsdatei in MB \(Megabytes\).

Beispiel \(Erzuegen einer 512 MB großen Auslagerungsdatei\):

```
cfs allocate-swapStorage \Device\HarddiskVolume2 512 FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## remove-swapStorage

```
remove-swapStorage <Device name> <Api-Token>
```

Löscht die Auslagerungsdatei einer Festplattenpartition. `Device name` ist der Name der Partition. Die Liste der möglichen Namen erhält man durch Aufruf mit get-fixedVolumes.

Beispiel:

```
cfs remove-swapStorage \Device\HarddiskVolume2 FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## remove-swapStorages

```
remove-swapStorages <Api-Token>
```

Löscht alle Auslagerungsdateien.

Beispiel:

```
cfs remove-swapStorages FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

## get-swapStorageInfo

```
get-swapStorageInfo <Device name>
```

Zeigt Informationen zur Auslagerungsdatei einer Festplattenpartition an. `Device name` ist der Name der Partition. Die Liste der möglichen Namen erhält man durch Aufruf mit get-fixedVolumes.

Beispiel:

```
cfs get-swapStorageInfo \Device\HarddiskVolume2
```

## prepare-system

```
prepare-system <Api-Token>
```

Prepariert den lokale Computer, so dass ein Aktivieren des Schutzes unter idealen Voraussetzungen geschehen kann. Dieser Befehl sollte unmittelbar vor einem Neustart des Systems aufgerufen werden, wenn zuvor der Schutz durch set-proctectionMode aktiviert wurde.

Beispiel:

```
cfs prepare-system FE520676B1A1D933674F3632EAEEB163D1E88244F5EB1DEDABAB2319EEA010EB
```

[CONFIRE SHERLOCK API]: /api.md
