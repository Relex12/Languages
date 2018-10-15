# 1ère partie du cours :

* **git status** donne l'état du commit
* **git config --global user.email "EMAIL"** ajoute l'adresse mail de l'utilisateur
* **git config --global user.name "NAME"** ajoute le nom de l'utilisateur
* **git add <monfichier.extension>** ajoute une modif / création à l'index de git et ajoute au commit
* **git commit -m "Mon message"** envoit le commit
* **git commit -a -m "Mon message"** ajoute toutes les modifs des fichiers de l'index et envoie le commit
* **git commit -am "Mon message"** ajoute toutes les modifs des fichiers de l'index et envoie le commit
* **git log** affiche l'historique des versions
* **git checkout <SHA du commit>** utilise une ancienne version du code
* **git checkout master** utilise la version actuelle du code
* **git revert <SHA du commit>** restaure la version du code dans un nouveau commit
* **git commit --amend -m "nouveau message"** modifie le message du dernier commit
* **git reset --hard** annule tous les changements dans le commit en cours pas encore envoyé


# 2ème partie du cours :

* **git clone <URLFournieParGitHub>** copie sur la machine un repository (dépôt) stocké sur GitHub
* **git push origin master** pour repository créé sur GitHub, envoit le commit vers GitHub
* **git pull origin master** récupère les dernières modifications disponible sur Github vers la machine locale


# 3ème partie du cours :

* **git branch** renvoit la branche courrante et les branches disponibles
* **git branch <nomBranche>** crée la branche du nom de <nomBranche>
* **git checkout <nomBranche>** se déplace la branche courrante dans la branche <nomBranche>
* **git checkout -b <nomBranche>** crée la branche et s'y déplace
* **git merche <nomBranche>** fusionne <nomBranche> avec la branche courrante (si on est sur une autre branche)
* **git branch -d <nomBranche>** supprime la branche
* **git commit** (sans message) après résolution de conflit de fusion, envoit un commit avec un message par défaut 
* **git blame <nomdufichier.extension>** affiche pour chaque ligne du fichier le début du SHA du commit correspondant
* **git show <début du SHA>** affiche en détail toutes les modifications apportées dans par un commit
* **touch .gitignore** créé un fichier texte .gitignore qui contient la liste, ligne par ligne, des fichiers à ignorer par Git (.gitignore à add et commit)
* **git stash** met de côté les dernières modifications apportées
* **git stash pop** charge les modifications mises de côté (et vide le stash)
* **git stash apply** charge les modifications mises de côté (sans vider le stash)
