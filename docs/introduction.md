# Einführung

CONFIRE SHERLOCK schützt Ihre Computer vor unerwünschten Veränderungen durch Benutzer, indem Änderungen auf der Festplatte zu einem beliebigen späteren Zeitpunkt verworfen werden können. Zusätzlich kann der Zugriff auf externe Laufwerke eingeschränkt oder ganz unterbunden werden, um beispielsweise unerwünschtes Kopieren von Dateien zu verhindern.

CONFIRE SHERLOCK ist eine effiziente und ohne besondere Systemkenntnisse einsetzbare Schutz-Software für öffentliche Computer, die einem größeren Personenkreis zugänglich sind.

## Anwendungsbereiche

* Computer-Schulungsräume bzw. Computer-Kabinette
* Computer auf Messeständen
* Computer in Internetcafés
* Computer in der Hotel-Lobby
* Software Testlabore
* Der Familien-Computer zu Hause

CONFIRE SHERLOCK schützt diese Computer vor ungewollten Änderungen und verhindert auf Wunsch auch, dass Daten z.B. per USB-Stick aufgespielt oder mitgenommen werden können.

## Highlights

* Reine Softwarelösung
* Geringe Anschaffungskosten
* Sehr einfach zu bedienen
* Minimale Administrationsarbeit nach intensiver Nutzung
* Für Software-Tests geeignet
* Effektiver Schutz gegen Viren und Malware
* Unterstützt alle Windows-Betriebssysteme ab Windows XP bis einschließlich Windows 10
* Eine API erlaubt das Steuern und Konfigurieren von CONFIRE SHERLOCK ohne grafische Benutzeroberfläche
* Die CONFIRE SHERLOCK Console erlaubt Konfigurieren per Windows-Kommandozeile.

!!! warning "Achtung"

	CONFIRE SHERLOCK installiert unter anderem einen systemnahen Treiber, der den Zugriff auf die Festplatte filtert. Diese hohe Systemnähe zum Betriebssystem kann zu möglichen Problemen bei unerwarteten Systemkonfigurationen (z.B. zukünftige Service-Packs für Windows) führen, die sich trotz umfassender Tests von CONFIRE SHERLOCK im Zweifelsfall nie ganz vermeiden lassen. Bitte achten Sie deshalb darauf, dass Sie vor der Installation und Nutzung von CONFIRE SHERLOCK von allen wichtigen Daten und Dateien eine Sicherheitskopie anlegen. Das Gleiche gilt für System-Updates des Betriebssystems bei ausgeschaltetem Schutz.

Als Administrator eines Computer-Kabinetts kennen Sie wahrscheinlich die Problematik, von Zeit zu Zeit einzelne Computer wieder in ihren Ursprungszustand zurückversetzen zu müssen, weil sich zum Beispiel durch eine Schulungs- bzw. Unterrichtsstunde zu viele temporäre Dateien angesammelt haben, weil Sie als Internetcafé-Administrator gar nicht wissen, welche Dateien Ihre Benutzer hinterlassen haben, weil sich Viren oder Trojaner eingeschlichen haben, weil wichtige Systemdateien gelöscht wurden oder weil unerwünschte Anwendungen installiert wurden. Diese Liste ließe sich noch beliebig weiter führen.

Eine Strategie dies zu unterbinden, könnte darin bestehen, die Zugriffsrechte im Betriebssystem derart rigide einzustellen, dass ein Benutzer möglichst wenig Spielraum für unerlaubte Aktionen besitzt. Leider ist dies in der Praxis sehr aufwändig (das Thema Sicherheit unter Windows füllt ganze Bücherregale) und kann zudem sehr schnell zu Berechtigungskonflikten führen. Soll beispielsweise eine Schulklasse im Fach Informatik unterrichtet werden, benötigen die Schüler zum Teil weitreichende Berechtigungen, um ihre Software-Projekte erfolgreich testen zu können. Dies eröffnet gleichzeitig das Tor für ungewollte Manipulationen.

Eine weitere Strategie könnte darin bestehen, von jedem Computer – genauer gesagt von deren Daten auf der Festplatte - ein Abbild (Image) zu erstellen und dieses jede Nacht automatisch wieder neu einzuspielen, so dass alle Änderungen des letzten Tages rückgängig gemacht werden. Auch hier ist der Aufwand nicht unerheblich (u.a. werden Spezialsoftware und eine geeignete Netzwerk- und Serverinfrastruktur benötigt). Dieser erhöht sich zudem jedes Mal, wenn neue Software oder Updates eingespielt werden sollen (In diesem Fall muss das Abbild jeweils neu erstellt werden).

CONFIRE SHERLOCK eröffnet eine dritte Strategie, die ein einfaches Wiederherstellen des alten Zustands ermöglicht, ohne dabei die Bewegungsfreiheit eines jeden Computernutzers einzuschränken. CONFIRE SHERLOCK bietet folgende Möglichkeiten:

* Sie können zu einem beliebigen Zeitpunkt in der Zukunft alle Änderungen auf dem lokalen Computer rückgängig machen. Sie können dabei wählen, ob Sie den alten Zustand schon beim nächsten Neustart oder erst bei einem Neustart am nächsten Tag (nächste Woche etc.) wiederherstellen möchten.

* Sie können einzelne Partitionen vom Schutz ausnehmen. So könnten Sie beispielsweise die Systempartition C: (also dort, wo das Windows-Betriebssystem installiert ist) schützen, die Datenpartition D: aber vom Schutz ausnehmen. Das erlaubt einen robusten Schutz des Betriebssystems, gleichzeitig können Daten auf der zweiten Partition dauerhaft gespeichert und verändert werden.

* Sollten Sie einmal den Wunsch haben, Änderungen auf einer geschützten Partition nicht zu verwerfen, sondern sie dauerhaft zu speichern, dann ist dies auch kein Problem. CONFIRE SHERLOCK erlaubt Ihnen, diese Änderungen zu übernehmen

* Zusätzlich können Sie den Zugriff auf alle externen Laufwerke (Diskettenlaufwerke, CD/DVD-Laufwerke, USB-Speicherkarten, etc.) kontrollieren. Externe Laufwerke können als schreibgeschützt oder als lese- und schreibgeschützt markiert werden. Sie können auf Wunsch sogar dafür sorgen, dass diese Laufwerke im Windows-Explorer gar nicht mehr auftauchen.

* Die [CONFIRE SHERLOCK API] erlaubt es Ihnen, die Funktionalität von CONFIRE SHERLOCK in eigene Anwendungen zu integrieren. Die API ist eine einfache DLL (Dynamic Link Library) ohne weitere Abhängigkeiten.

* Die [CONFIRE SHERLOCK CONSOLE] ist ein Beispiel für die Integration der CONFIRE SHERLOCK API. Diese Kommandozeilenanwendung gibt Ihnen die Möglichkeit, CONFIRE SHERLOCK im Rahmen von administrativen Skripten zu steuern bzw. zu konfigurieren. Beispiel: Automatisches Aus- und Wiederanschalten des Schutzes zu einem bestimmten Zeitpunkt, um Windows-Serviceupdates einspielen zu können.

* Und zu guter Letzt: CONFIRE SHERLOCK ist eine reine Software-Lösung. Das bedeutet Sie können sie auf praktisch jedem Computer installieren, egal ob es sich um einen Laptop oder einen klassischen Desktop-Computer handelt.

Die Software ist einfach zu installieren und zu bedienen. Sie installieren dazu CONFIRE SHERLOCK auf jedem zu schützenden Computer und konfigurieren den Schutzmechanismus.

[CONFIRE SHERLOCK API]: api.md
[CONFIRE SHERLOCK CONSOLE]: console.md