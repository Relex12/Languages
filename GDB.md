# A la compilation

* utiliser l'argument **-g** lors de la compilation du fichier

# Lancement de GDB

* **gdb <program>** lance une session de debugage avec l'exécutable **program**
* **gdb <program> n°ps** lance une session *program* en cours d'exécution de numéro de process **ps**
* **gdb <program -q** lance gdb sans afficher les informations légales

# Une fois dans une session GDB

* **(gdb) command params #comment* *command* est la commande à exécuter, *params* est le ou les paramètres, un commentaire se met avec un #
* **(gdb) apropos <commmand>** donne plus d'information sur **command**
* **(gdb) run <args>** exécute le programme, avec **args** en argument (facultatif)
* **(gdb) start** exécute le programme avec un breakpoint
* **(gdb) show args** affiche la ligne d'arguments actuelle du programme
* **(gdb) set args <args>** règle la ligne d'arguments à *args*
* **(gdb) show env <var>** affiche *var* (facultatif) ou toutes les variables d'environnement
* **(gdb) unset env <var>** supprime la variable d'environnement **var**
* **(gdb) pwd**
* **(gdb) cd <dir>**
