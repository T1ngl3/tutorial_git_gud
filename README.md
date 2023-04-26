# tutorial_git_gud
This repository holds the teaching material for my tutorial in statistical illusion

## Was ist git?

### Versionsverwaltungssystem \(bzw. ein Repository\)

speichert:
- Inhalt aller Dateien eines Projekts
- gesamte Änderungsgeschichte eines Projekts
- Metadaten (Änderungszeitpunkt, Autor, Kommentare, Versionsnummer)

### verteiltes Versionsverwaltungssystem

Repositories:
- verschiedene repositories befinden sich auf verschiedenen Computern
- die Repositories können untereinander synchronisiert werden
- die Arbeitskopie wird mit dem lokalen repository synchronisiert

### Snapshot-basiertes Versionsverwaltungssystem

Dateien:
- werden vollständig im aktuellen Zustand gespeichert
- unveränderte Dateien werden dupliziert
- Diff wird bei Bedarf generiert

### Staging Area/Index

Zwischenschritt zwischen working copy und repository
ermöglicht bessere Kontrolle darüber was in die neue Version übernommen wird

### Hash Adressierung

Versionen werden mittels Hash-Adressierung gespeichert und referenziert

### Kommandozeilen Anwendung

Viele nützliche Kommandozeilenbefehle

## Was ist GitHub?

###

<p>GitHub ist ein Unternehmen, dass repositories hostet.<br>
Dies erlaubt uns ein remote repository aufzusetzen auf dass wir alle zugreifen.<br>
Dieses remote repository stellt für uns eine Art "single source of truth" dar.</p>

## einfache git Kommandozeilenbefehle

![picture of git workflow](/git-workflow.png)
<p><br>
Link to the original image (https://phoenixnap.com/kb/wp-content/uploads/2021/09/git-workflow.png).<br>

### Tipps zum Nutzen der Shell

Einfügen und Kopieren funktioniert mit Rechtsklick, nicht mit Strg + V.<br>
Mit den Pfeiltasten oben und unten können vorherig genutzte Befehle abgerufen werden.<br>

### Kommandozeilenbefehle

Erklärung eines Befehls:<br>
git help *command*<br>

Aktuellen Dateipfad ändern:<br>
cd *dateipfad*

Neues Repository erschaffen:<br>
git init<br>
</p>

Repository klonen<br>
git clone *dateipfad*/*link*<br>
\(Der Link zu einem remote repository auf gitHub ist unter dem grünen "Code" Button zu finden.\)<br>

