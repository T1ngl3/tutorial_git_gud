# tutorial_git_gud
This repository holds the teaching material for my tutorial in statistical illusion

## Was ist git?

### Versionsverwaltungssystem

speichert in so genannten repositories:
- Inhalt aller Dateien eines Projekts
- gesamte Änderungsgeschichte eines Projekts
- Metadaten (Änderungszeitpunkt, Autor, Kommentare, Versionsnummer)

### verteiltes Versionsverwaltungssystem

Repositories:
- verschiedene repositories befinden sich auf verschiedenen Computern
- die Repositories können untereinander synchronisiert werden
- die Arbeitskopie wird mit dem lokalen repository synchronisiert
- enthalten commits, also Änderungen/Versionen

### Snapshot-basiertes Versionsverwaltungssystem

Dateien:
- werden vollständig im aktuellen Zustand gespeichert
- unveränderte Dateien werden dupliziert
- Diff wird bei Bedarf generiert

### Staging Area/Index
<p>
Zwischenschritt zwischen working copy und repository<br>
ermöglicht bessere Kontrolle darüber was in die neue Version übernommen wird.</p>

### Hash Adressierung

Versionen werden mittels Hash-Adressierung gespeichert und referenziert

### Kommandozeilen Anwendung

Viele nützliche Kommandozeilenbefehle

## Was ist GitHub?

###

<p>
GitHub ist ein Unternehmen, dass repositories hostet.<br>
Dies erlaubt uns ein remote repository aufzusetzen auf dass wir alle zugreifen.<br>
Dieses remote repository stellt für uns eine Art "single source of truth" dar.</p>

## Was ist ein Branch?
<p>
Branches sind pointer zu bestimmten commits.<br>
Branches erlauben uns parallel an features zu arbeiten, während die Hauptversion intakt bleibt.<br>
Head ist ein pointer der zum aktuell betrachteten commit zeigt.<br>
main ist der pointer zur "Hauptversion".</p>

### Was ist ein Merge?
<p>
Bei einem merge werden mehrere commits zu einem neuen commit zusammengefasst.</p>

#### Was ist ein Merge Konflikt?
<p>
Ein merge funktioniert im besten Fall automatisch, falls dies bspw. durch Änderungen in beiden commits in der gleichen Zeile nicht möglich sein sollte, müssen diese "Merge Konflikte" manuell gelöst werden.</p>

![picture of git branches](/git_explanation_pictures/git-branch.jpg)
<p><br>
Link to the original image (https://miro.medium.com/v2/resize:fit:1200/1*GLOzQT-XGHG9fPdzpqvz6w.jpeg)</p>

## Was sind Pull Requests und Issues
<p>
Issues helfen uns zu organisieren was zu tun ist.<br>
Pull Requests helfen uns dabei abzusichern, dass das was getan wurde sicher in die Hauptversion übernommen werden kann.<br>

### Issue
<p>
Ein Issue kann manuell auf GitHub erstellt werden.<br>
Es handelt sich um eine präzise Beschreibung einer Aufgabenstellung für eine Änderung.<br>
Wenn man ein Issue lösen möchte trägt man sich selbst als Assignee ein, damit das Issue klar vergeben ist.<br>
In den meisten Fällen arbeitet man für die Bearbeitung auf einem neuen Branch.</p>

### Pull Request
<p>
Ein Pull Request kann ebenfalls auf GitHub erstellt werden, nachdem man einen commit auf einem anderen Branch als main gemacht hat.<br>
In den body der PR gehört "resolves #nummerDesGelöstenIssues" und eine Beschreibung der Änderung.<br>
Die Idee ist, dass andere die Abgabe nochmal überprüfen, bevor sie in die Hauptversion übernommen wird.<br>
Man kann andere als Reviewer für seine Pull Request berufen.</p>

#### Aufgaben als Reviewer

<p>
Den commit der Pull Request auf Korrektheit prüfen.<br>
Falls nein, einen konstruktiven Kommentar schreiben und auf neue Version der Pull Request warten.<br>
Falls ja, die Korrektheit zurückmelden und danach je nach workflow selbst mit main mergen oder vom Ersteller der PR mergen lassen.<br>
Die Person die merged ist dann für die Überprüfung der Korrektheit des merges und für das pushen von diesem ans remote repository zuständig.<br>
</p>

## einfache git Kommandozeilenbefehle

![picture of git workflow](/git_explanation_pictures/git-workflow.png)
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
\(Man sollte auf den Ordner des repositories verweisen wenn man in diesem arbeiten will.\)<br>

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
lokalen Branch löschen:<br>
git branch -d *branchname*<br>
Auf neuen remote Branch committen:<br>
git push --set-upstream origin *branchname*<br>
remote Branch löschen:<br>
git push origin --delete *branchname*<br>

Neuesten commit eines anderen branches in den aktuellen commit mergen:<br>
git merge *branchname*<br>

commits interaktiv umorganisieren:<br>
git rebase -i *branchname*<br>
\(Es werden meist neue commits generiert, rebase ist ein etwas fortgeschrittener Befehl\)<br>
</p>

## git config die mir geholfen haben

![picture of gitconfig1](/git_config_pictures/git_config_1_von_3.png)
<p>
<br>
</p>

![picture of gitconfig2](/git_config_pictures/git_config_2_von_3.png)
<p>
<br>
</p>

![picture of gitconfig3](/git_config_pictures/git_config_3_von_3.png)
<p>
<br>
Die configs sind aus der Vorlesung Software Engineering.</p>

# Hausaufgabe

1. Schaut euch das Repository (https://github.com/fgoepp/tp23-statistical-illusions) zu unserem Teamprojekt an
- gitShell: Ändert den Dateipfad zu einem Ort an dem ihr das lokale repository speichern wollt.
- gitShell: Klont das Repository
- DateiExplorer oder gitShell: Betrachtet die Dateien

2. Schaut euch mein Repository (https://github.com/T1ngl3/tutorial_git_gud) an
- Klont das repository an einen geeigneten Ort
- Betrachtet die Änderungsgeschichte, nutzt git status und fragt git nach einer Erklärung für einen command
- Springt zu einem commit mittels git checkout *hash* den ihr in der Änderungsgeschichte gefunden habt
- betrachtet von diesem commit aus mit git diff *hash* den Unterschied zum darauffolgenden commit
- springt wieder zu main

3. Füllt den Steckbrief am Ende dieses Dokuments aus
- Weißt euch eurem Issue zu
- Füllt den Steckbrief aus
- Erschafft einen neuen Branch mit passendem Namen
- Stellt sicher, dass ihr auf diesen Branch gewechselt habt
- Betrachtet die aktuelle Situation mit git status
- Fügt eure Änderungen der Staging Area hinzu
- Nutzt erneut git status
- committed die Änderungen, wenn ihr zufrieden seid, in euer lokales repository, ansonsten nutzt git reset
- Verwendet git push --set-upstream origin *branchname* um den Branch im remote repository zu erschaffen und auf diesen zu pushen
- eröffnet eine Pull Request zu eurem commit
- beauftragt ein Teammitglied mit der Review eurer PR

4. Euren Steckbrief in main mergen
- Holt euch mit git fetch --all eine aktuelle Version des repositories
- Stellt sicher dass ihr auf dem main branch seid
- merged euren branch in main
- löst mögliche Konflikte auf
- fügt die Datei der Staging Area hinzu, committed, pushed auf das remote repository
- Die PR und das Issue sollten sich automatisch erledigt haben

## Steckbrief

Bild: ![picture of ...](/.png)
<p>
Name: <br>
Alter: <br>
Mein Lieblingstier: </p>