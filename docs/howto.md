# So gehen Sie vor

## Installation

Besuchen Sie zunächst die [CONFIRE SHERLOCK Website], um sich die aktuellste Version von CONFIRE SHERLOCK herunterzuladen. Es gibt zwei unterschiedliche Installationspakete für CONFIRE SHERLOCK:

* `ConfireSherlockSetup64.msi` ist ein Installationspaket für die 64-Bit-Versionen von Windows.
* `ConfireSherlockSetup32.msi` ist ein Installationspaket für die 32-Bit-Versionen von Windows.

Bitte wählen Sie das für Sie passende Installationspaket aus. Sollten Sie sich unsicher sein, welches das Richtige ist, probieren Sie einfach beide aus. Sie können dabei nichts falsch machen, da beide Installationspakete Sie darauf hinweisen, falls das Betriebssystem nicht passt.

Starten Sie die Installation durch Doppelklick auf das Installationspaket und folgen Sie einfach den Anweisungen. Am Ende der Installation werden Sie gebeten, den Computer neu zu starten. Bitte tun Sie dies auch, da CONFIRE SHERLOCK unter anderem einen Systemtreiber installiert, der erst beim Neustart von Windows geladen werden kann.

## Lizenzierung

Sie erhalten die Möglichkeit CONFIRE SHERLOCK maximal 30 Tage lang zu testen. Danach müssen Sie sich entscheiden, ob Sie die Software wieder deinstallieren oder ob Sie eine Lizenz erwerben wollen, um CONFIRE SHERLOCK unbefristet zu nutzen. Sie müssen jeden Computer lizenzieren, auf dem CONFIRE SHERLOCK installiert ist.

Beim ersten Start der CONFIRE SHERLOCK STEUERUNG aus der Windows-Systemsteuerung heraus erscheint das Dialogfenster “Testlizenz”. Dieses Dialogfenster zeigt Ihnen an, wieviele Tage Sie noch CONFIRE SHERLOCK testen können.

<figure class="center">
    <img src="/assets/images/testlicense-dialog.png" alt="Das Dialogfenster Testlizenz">
    <figcaption>Das Dialogfenster <em>Testlizenz</em></figcaption>
</figure>

* Möchten Sie mit der Testversion weiterarbeiten, klicken Sie einfach auf `Anwendung starten`.

* Möchten Sie CONFIRE SHERLOCK uneingeschränkt auf diesem Computer nutzen, müssen Sie eine Lizenz bei STÜBER SYSTEMS erwerben. Wir benötigen als Information die Anschrift Ihrer Schule bzw. Ihrer Firma sowie die Anzahl der Rechner. Sie können hierfür die Bestellformulare für Schulen bzw. Unternehmen nutzen. Sie bekommen dann einen Lizenzschlüssel per E-Mail zurückgeschickt. Diesen können Sie per `Lizenz importieren` direkt importieren oder aber per `Lizenz ändern` manuell eintippen. Alternativ erreichen Sie beide Befehle auch nach Starten der Anwendung über die Registerkarte “Hilfe”. Klicken Sie dort auf `Informationen anzeigen`.

<figure class="center">
    <img src="/assets/images/about-dialog.png" alt="Das Dialogfenster Programm-Informationen">
    <figcaption>Das Dialogfenster <em>Programm-Informationen</em></figcaption>
</figure>

## Konfigurieren

Zum Konfigurieren von CONFIRE SHERLOCK müssen Sie die CONFIRE SHERLOCK STEUERUNG aufrufen. Klicken Sie dazu in der Taskleiste mit der rechten Maustaste auf das folgende Symbol:

<figure class="center">
    <img src="/assets/images/taskbar-red-icon.png" alt="Der CONFIRE SHERLOCK-Schutz ist inaktiv.">
    <figcaption>Der CONFIRE SHERLOCK-Schutz ist inaktiv.</figcaption>
</figure>
  
Wählen Sie im Aufklappmenü den Eintrag `Einstellungen ändern` aus. Es öffnet sich die CONFIRE SHERLOCK STEUERUNG. Alternativ können Sie die CONFIRE SHERLOCK STEUERUNG auch über die Windows-Systemsteuerung aufrufen.

Die CONFIRE SHERLOCK Steuerung erlaubt es Ihnen, den zentralen Schutz ein- oder auszuschalten sowie alle Einstellungen von CONFIRE SHERLOCK zu ändern. Im Folgenden gehen wir die Einstellungen der einzelnen Registerkarten Schritt für Schritt durch.

Auf der Registerkarte “Start” schalten Sie den CONFIRE SHERLOCK-Schutz für den Computer ein- oder aus.

<figure class="center">
    <img src="/assets/images/sysctrl-start-tab.png" alt="Die Registerkarte Start">
    <figcaption>Die Registerkarte <em>Start</em></figcaption>
</figure>

Auf der Registerkarte “Festplatten” werden Ihnen alle Festplatten bzw. Partitionen ihres Computers als Laufwerke aufgelistet. Für jedes Laufwerk können Sie entscheiden, ob Sie dieses schützen möchten oder nicht. Klicken Sie dazu in der Liste jeweils auf das gewünschte Laufwerk und markieren Sie die Option “Laufwerk soll geschützt werden”.

<figure class="center">
    <img src="/assets/images/sysctrl-fixed-drives-tab.png" alt="Die Registerkarte Festplatten">
    <figcaption>Die Registerkarte <em>Festplatten</em></figcaption>
</figure>

Für jedes zu schützende Laufwerk können Sie zudem festlegen, wie groß die zu erstellende Auslagerungsdatei sein soll. CONFIRE SHERLOCK schlägt automatisch eine passende Größe für jede Auslagerungsdatei vor, so dass Sie sich normalerweise nicht weiter um diese Einstellung kümmern müssen. Möchten Sie jedoch die Größe einer Auslagerungsdatei vergrößern oder verkleinern, so klicken Sie auf die Schaltfläche `Anpassen`.

!!! info
	
	Für jedes zu schützende Laufwerk legt CONFIRE SHERLOCK eine Auslagerungsdatei an. Dies ist eine spezielle Systemdatei mit unveränderlicher Größe. In diese Datei werden alle Änderungen umgeleitet, bevor sie das eigentliche Dateisystem erreichen. Soll bei einem Neustart von Windows der alte Zustand wiederhergestellt werden, so wird der Inhalt der Auslagerungsdatei einfach verworfen und die Originaldaten aus dem Dateisystem werden wieder verwendet.

Nach dem Bestätigen der Änderungen in der CONFIRE SHERLOCK STEUERUNG durch OK, werden die Auslagerungsdateien (soweit noch nicht vorhanden) automatisch neu angelegt. Dies kann je nach Größe und Anzahl der Auslagerungsdateien einige Minuten dauern.

Auf der Registerkarte “Neustart” können Sie das Verhalten von CONFIRE SHERLOCK beim Neustart von Windows bestimmen. Sie können wählen, ob Sie bei jedem Neustart alle Änderungen verwerfen möchten, oder ob Sie dies nur in bestimmten zeitlichen Abständen tun möchten. Im zweiten Fall können Sie ein Intervall aus Wochentagen und Uhrzeit definieren, um festzulegen wann die Änderungen verworfen werden sollen. Nehmen wir einmal an, Sie hätten die Wochentage Montag und Mittwoch ausgewählt und die Uhrzeit 22:00 eingestellt. In diesem Fall würde für die Wochentage Montag und Mittwoch jeweils gelten, dass beim ersten Neustart ab 22 Uhr alle Änderungen verworfen werden. An allen anderen Wochentagen hätte die Überschreitung der 22 Uhr Grenze keine Auswirkung.

<figure class="center">
    <img src="/assets/images/sysctrl-reboot-tab.png" alt="Die Registerkarte Neustart">
    <figcaption>Die Registerkarte <em>Neustart</em></figcaption>
</figure>

Möchten Sie das Verhalten individuell für jedes Laufwerk einstellen, klicken Sie auf `Bearbeiten`, um das Dialogfenster “Ausnahmen im Neustartverhalten” zu öffnen.

<figure class="center">
    <img src="/assets/images/sysctrl-removable-drives-tab.png" alt="Die Registerkarte Externe Laufwerke">
    <figcaption>Die Registerkarte <em>Externe Laufwerke</em></figcaption>
</figure>

Auf der Registerkarte "Externe Laufwerke" können Sie festlegen, ob und wie Sie externe Laufwerke schützen wollen. Dies sind zum Beispiel alle Diskettenlaufwerke, CD/DVD-Laufwerke und externe USB-Speicherkarten. Dazu stehen Ihnen folgende Optionen zur Verfügung:

1. Die Option "Laufwerke werden im System nicht angezeigt" bedeutet, der Benutzer sieht die Laufwerke im System nicht. Im Windows-Explorer werden sie beispielsweise nicht mehr angezeigt.

2. Die Option "Laufwerke stehen nur lesend zur Verfügung" bedeutet, der Benutzer kann nur lesend auf die Laufwerk zugreifen. Jede Schreiboperation wird unterbunden.

3. Die Option "Laufwerke stehen in vollem Umfang zur Verfügung" bedeutet, der Benutzer kann uneingeschränkt auf alle Laufwerke zugreifen. Insbesondere kann er Daten lesen und schreiben.

Diese Optionen gelten standardmäßig für alle externen Laufwerke im System, sowohl für aktuelle wie für auch zukünftige Laufwerke. Möchten Sie den Schutz für spezifische Laufwerke anders konfigurieren, können Sie unter "Ausnahmen" auf `Bearbeiten` klicken. Ein Dialogfenster öffnet sich, in dem Sie einzelne Laufwerke markieren können, um deren Schutz individuell einzustellen. Dabei stehen Ihnen pro Laufwerk folgende Optionen zur Verfügung:

* Die Option "Standardvorgabe" bedeutet, dass für das markierte Laufwerk die globale Konfiguration gilt. Das Verhalten richtet sich also nach den Einstellungen auf der Registerkarte “Externe Laufwerke”.

* Die Option "Laufwerk wird im System nicht angezeigen" bedeutet, dass der Benutzer das markierte Laufwerk im System nicht sehen kann.

* Die Option "Laufwerk steht nur lesend zur Verfügung" bedeutet, dass der Benutzer auf das markierte Laufwerk nur lesend zugreifen kann.

* Die Option "Laufwerk steht in vollem Umfang zur Verfügung" bedeutet, dass der Benutzer auf das markierte Laufwerk lesend und schreibend zugreifen kann.

Auf der Registerkarte "Kennwörter" können Sie zwei Kennwörter mit unterschiedlicher Bedeutung vergeben, um CONFIRE SHERLOCK vor unbefugter Benutzung zu schützen.

<figure class="center">
    <img src="/assets/images/sysctrl-passwords-tab.png" alt="Die Registerkarte Kennwörter">
    <figcaption>Die Registerkarte <em>Kennwörter</em></figcaption>
</figure>

<dl>
  <dt>Administrator-Kennwort</dt>
  <dd>Dieses Kennwort sichert den Aufruf der CONFIRE SHERLOCK STEUERUNG ab. Sie können somit ohne Kenntnis dieses Kennwortes die Konfiguration (z.B. auch das globale Einschalten und Ausschalten des Schutzes) von CONFIRE SHERLOCK nicht mehr ändern. Sie sollten in jedem Fall ein Administrator-Kennwort definieren.</dd>
  <dt>Benutzer-Kennwort</dt>
  <dd>Dieses Kennwort sichert den Aufruf des Dialogfensters “Computer neu starten” aus der Windows-Taskleiste heraus. Sie können ohne Kenntnis dieses Kennwortes keine Änderungen dauerhaft speichern oder den Computer zwingen Änderungen zu einem beleibigen Zeitpunkt zu verwerfen.</dd>
</dl>

Die Schaltfläche `API-Token anzeigen` öffnet ein Dialogfenster, das den aktuellen API-Token anzeigt. Der API-Token ist eine Buchstaben-Zahlen-Kombination, die sich aus dem aktuellen Administrator-Kennwort errechnet. Es ist eine Art Kennwort, dass benötigt wird, um die CONFIRE SHERLOCK API bzw. CONFIRE SHERLOCK CONSOLE bedienen zu können. Mit jeder Änderung des Administrator-Kennworts ändert sich auch der API-Token.

Auf der Registerkarte “Optionen” können Sie die Sprache für Oberfläche und Meldungen von CONFIRE SHERLOCK wechseln und Sie können festlegen, ob CONFIRE SHERLOCK in der Windows-Taskleiste als Symbol angezeigt werden soll oder nicht. Mit Hilfe der Optionen "Befehl 'Einstellungen ändern' ausblenden" und "Befehl 'Neu starten' ausblenden" können Sie den Inhalt des Symbol-Kontextmenüs beeinflussen.

<figure class="center">
    <img src="/assets/images/sysctrl-options-tab.png" alt="Die Registerkarte Optionen">
    <figcaption>Die Registerkarte <em>Optionen</em></figcaption>
</figure>

Auf der Registerkarte “Hilfe” haben Sie die Möglichkeit, diese Hilfe zu starten, sich die Lizenzierungsdaten anzeigen zu lassen bzw, diese zu ändern oder ein Update einzuspielen.

<figure class="center">
    <img src="/assets/images/sysctrl-help-tab.png" alt="Die Registerkarte Hilfe">
    <figcaption>Die Registerkarte <em>Hilfe</em></figcaption>
</figure>

Wenn Sie das Dialogfenster mit `OK` verlassen, wird zunächst überprüft, ob neue Auslagerungsdateien angelegt werden müssen. Ist dies der Fall erscheint ein Dialogfenster, das den Fortschritt der Erstellung anzeigt. Bitte beachten Sie, dass die Erstellung neuer Auslagerungsdateien je nach Größe einige Minuten dauern kann. In der Regel werden Sie auch dazu aufgefordert, den Computer neu zu starten. Dies ist notwendig, damit sich das gesamte System neu konfigurieren kann.

Haben Sie den globalen Schutz auf der Registerkarte “Start” aktiviert ist nach dem Neustart der CONFIRE SHERLOCK-Schutz aktiv. Sie erkennen dies unter anderem daran, dass das Symbol in der Taskleiste jetzt grün ist.

<figure class="center">
    <img src="/assets/images/taskbar-blue-icon.png" alt="Der CONFIRE SHERLOCK-Schutz ist aktiv">
    <figcaption>Der CONFIRE SHERLOCK-Schutz ist aktiv</figcaption>
</figure>

## Änderungen verwerfen oder übernehmen

Ist der CONFIRE SHERLOCK-Schutz aktiviert, so überprüft CONFIRE SHERLOCK bei jedem Neustart des Computers, ob die Änderungen der letzten Sitzung verworfen, beibehalten oder übernommen werden sollen. Sie können das Verhalten wie folgt beeinflussen:

* Wenn Sie den Computer wie gewohnt mit Hilfe der Windows-Oberfläche herunterfahren, dann gelten beim nächsten Neustart die Einstellungen in der CONFIRE SHERLOCK STEUERUNG.

* Wenn Sie in der Taskleiste mit der rechten Maustaste auf das CONFIRE SHERLOCK-Symbol klicken und dann den Befehl "Neu starten" wählen, können Sie die Einstellungen der CONFIRE SHERLOCK STEUERUNG für den nächsten Neustart einmalig überschreiben.

Das Dialogfenster "Computer neu starten" steht Ihnen nur zur Verfügung, wenn der CONFIRE SHERLOCK-Schutz aktiv ist.

<figure class="center">
    <img src="/assets/images/userctrl-reboot-dialog.png" alt="Das Dialogfenster Computer neu starten">
    <figcaption>Das Dialogfenster <em>Computer neu starten</em></figcaption>
</figure>

## Updates einspielen

Per Update enthalten Sie verbesserte Versionen von CONFIRE SHERLOCK. Sie haben zwei Möglichkeiten ein Update einzuspielen:

* Sie starten die CONFIRE SHERLOCK STEUERUNG, wechseln auf die Registerkarte "Hilfe" und klicken auf "Auf Aktualisierungen prüfen". CONFIRE SHERLOCK baut nun eine Internetverbindung zum Internet-Server von STÜBER SYSTEMS auf und prüft, ob eine neuere Version von CONFIRE SHERLOCK bereitsteht. Ist dies der Fall, wird das Installationspaket auf Wunsch automatisch heruntergeladen und ausgeführt.

* Im Falle einer nicht vorhandenen oder fehlerhaften Internetverbindung können Sie die aktuelle Installation von CONFIRE SHERLOCK auch auf einem anderen Computer von unseren Internetseiten herunterladen und dann manuell ausführen. Bitte beachten Sie, dass eine Neuinstallation und ein Update durch ein und dasselbe Installationspaket durchgeführt wird. Es wird automatisch erkannt, welche Variante ausgeführt werden soll.

Denken Sie bitte außerdem daran, dass ein Update nur bei ausgeschaltetem Schutz durchgeführt werden kann. Nach Einspielen des Updates müssen Sie den Computer neu starten.

[CONFIRE SHERLOCK Website]: http://sherlock.stueber.de