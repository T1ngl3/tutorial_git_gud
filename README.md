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
Ein Punkt . bedeutet alles. <br>
Wenn die Ausgabe größer ist als das Fenster der Kommandozeile: mit Enter erweitern, mit q entkommen.<br>

### Kommandozeilenbefehle

#### Befehle zum Verstehen der Situation

Erklärung eines Befehls:<br>
git help *command*<br>

Änderungsgeschichte ansehen:<br>
git log<br>
Änderungsgeschichte als Graph ansehen:<br>
git log --oneline --graph --all --decorate<br>

Geänderte Dateien, gestagede Dateien, fehlende Dateien etc. mit Beschreibungen:<br>
git status<br>

Unterschiede zwischen Arbeitskopie und Head, bzw. Arbeitskopie und Staging Area sehen:<br>
git diff \[--staged\]<br>

#### Befehle zum managen der Repositories

Aktuellen Dateipfad ändern:<br>
cd *dateipfad*<br>

Neues Repository erschaffen:<br>
git init<br>

Repository klonen:<br>
git clone *dateipfad*/*link*<br>
\(Der Link zu einem remote repository auf gitHub ist unter dem grünen "Code" Button zu finden.\)<br>

Änderungen in die Staging Area bringen:<br>
git add *file*/.<br>

Änderungen von der Staging Area entfernen:<br>
git reset<br>

Änderungen von der Staging Area in das lokale repository übernehmen:<br>
git commit -m "*description of the change*"<br>

Datei oder Version zur Arbeitskopie hinzufügen:<br>
git checkout *file*/*commit*<br>

Die Änderungen von einem lokalen Branch ans remote repository schicken:<br>
git push \[origin *branch*\]<br>

Lokales repository mit dem remote repository "ersetzen":<br>
git fetch --all<br>

#### Befehle zu Branches

Neuen Branch erstellen oder zwischen branches wechseln:<br>
git checkout *branchname*<br>
Branch löschen:<br>
git checkout -d *branchname*<br>

Neuesten commit eines anderen branches in den aktuellen commit mergen:<br>
git merge *branchname*<br>

git rebase *branchname*<br>


</p>
