# Tipps & Tricks

## Ihren Computer partitionieren

Ein Computer besitzt in der Regel eine oder mehrere Festplatten. Jede dieser Festplatten kann noch einmal logisch in Partitionen unterteilt werden. Es ist üblich, einen Computer in zwei oder drei Partitionen aufzuteilen. Die erste Partition ist meistens die Systempartition, also jene Partition, in der das Windows-Betriebssystem installiert ist. Manche Computer besitzen auch nur eine einzige Partition.

Möchten Sie alle Partitionen schützen, ist es im Prinzip egal, wie Sie Ihren Computer partitionieren. Möchten Sie aber Ihren Computer nur teilweise schützen, um Benutzern die Möglichkeit zu eröffnen, ihre Dateien dauerhaft zu speichern, bietet es sich an, auf alle Fälle die Systempartition (in der Regel C:) zu schützen aber mindestens eine Partition vom Schutz auszunehmen.

Eine alternative und oft auch effizientere Möglichkeit Dateien dauerhaft zu speichern besteht jedoch darin, für jeden Benutzer einen persönlichen Ordner im Netzwerk einzurichten. Der Vorteil dieser Vorgehensweise besteht darin, dass dieser Ordner nicht auf dem lokalen Computer liegt und er unabhängig vom gewählten Computerplatz stets zur Verfügung steht.

## Das BIOS des Computers

CONFIRE SHERLOCK bietet die Möglichkeit Ihre Computer umfassend zu schützen. Als Erweiterung des Betriebssystems kann CONFIRE SHERLOCK seine Schutzwirkung natürlich nur dann entfalten, wenn das Betriebssystem auch gestartet ist. Bei jedem Computer wird am Ende der Startphase das Betriebssystem geladen und ausgeführt. Diese Startphase wird vom sogenannten BIOS (Basic Input Output System) initiiert, einer kleinen Spezialsoftware, die auf der Hauptplatine des Computers gespeichert ist. Dieses BIOS lässt sich selbstverständlich auch konfigurieren und damit in seinem Verhalten abändern. So könnte beispielsweise jemand versuchen, den Schutz von CONFIRE SHERLOCK zu umgehen, indem er ein zweites Betriebssystem von Diskette oder CD-ROM startet. Dieses Verhalten ist natürlich unerwünscht und sollte daher von Ihnen unterbunden werden:

* Stellen Sie die sogenannte Boot-Reihenfolge im BIOS so ein, dass die Festplatte mit dem Windows-Betriebssystem immer zuerst gestartet wird. So verhindern Sie, dass durch Einlegen einer Diskette oder CD ein konkurrierendes Betriebssystem gestartet werden kann.

* Jedes BIOS erlaubt Ihnen, die Konfiguration durch ein Kennwort zu schützen. Nutzen Sie diese Möglichkeit, um den Zugang zu erschweren. Leider haben die BIOS-Hersteller die in unserem Fall ärgerliche Tradition, dass sie regelmäßig Master-Kennwörter für ihr BIOS fest einbauen. Das bedeutet, durch eine ausgiebige Recherche im Internet und etwas Geduld, kann der Kennwortschutz durchaus umgangen werden. Sollte dies ein Problem für Sie sein, bleibt nur die Empfehlung, unter Windows das Neustarten bzw. Herunterfahren zu sperren und ggf. die Rechnergehäuse (und damit den Neustart-Knopf und das Netzkabel des Rechners) unzugänglich zu machen.

## Der abgesicherte Modus von Windows

Wenn Sie in der frühen Startphase von Windows auf die Taste F8 drücken, bekommen Sie einen Auswahlbildschirm angezeigt, der es Ihnen erlaubt, Windows in unterschiedlichen Modi zu starten. Einer dieser Modi ist der sogenannte abgesicherte Modus (Safe-Mode), bei dem nur die allernotwendigsten Treiber, Dienste und Anwendungen gestartet werden. Dieser Modus dient der Administration von Windows für den Fall, dass eine bestimmte Software die normale Ausführung von Windows unmöglich macht.

Wie Sie sich vielleicht schon gedacht haben, könnte dieser Modus potenziell auch die Möglichkeit bieten, den Schutz von CONFIRE SHERLOCK zu umgehen. Seien Sie beruhigt: CONFIRE SHERLOCK schützt Ihren Computer auch im abgesicherten Modus. Und nicht nur dort, auch alle anderen angebotenen Modi haben keinen Einfluss auf die Schutzwirkung von CONFIRE SHERLOCK.

## Die Grenzen von CONFIRE SHERLOCK

CONFIRE SHERLOCK nutzt das Prinzip der Auslagerungsdatei, um Änderungen in einer Partition umzuleiten. Ganz konkret bedeutet dies: alle Änderungen werden in eine spezielle Datei geschrieben und von dort wieder ausgelesen. Da diese Datei stets eine fixe Größe besitzt, hat dies automatisch Auswirkungen auf die Arbeitsweise von CONFIRE SHERLOCK.

Die Auslagerungsdatei benötigt Platz auf der zu schützenden Partition und reduziert somit deren reale Kapazität. Bei großen und wenig ausgenutzten Partitionen stellt dies kein Problem dar, bei kleinen oder sehr vollen Partitionen schon eher. Wenn Sie beispielsweise eine 2 GB Auslagerungsdatei auf einer Partition erstellen, die zuvor nur noch 3 GB freien Speicherplatz zur Verfügung hat, kann es sein, dass der freie Speicherplatz unter Windows schnell aufgebraucht ist. Dies sollten Sie bei der Dimensionierung der Auslagerungsdateien beachten. CONFIRE SHERLOCK schlägt Ihnen automatisch einen passenden Größenwert vor, der sich am freien Speicherplatz der Partition orientiert.

Übersteigt das Änderungsvolumen die Größe der Auslagerungsdatei kann CONFIRE SHERLOCK und somit auch Windows seine Arbeit nicht fortführen. In diesem Fall müssen durch einen Neustart die Änderungen verworfen oder dauerhaft gespeichert werden. Über das Taskleistensymbol informiert Sie CONFIRE SHERLOCK rechtzeitig über eine zu geringe Speicherkapazität der Auslagerungsdatei.
