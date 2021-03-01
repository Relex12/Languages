# A la compilation

* utiliser l'argument **-g** lors de la compilation du fichier

# Lancement de GDB

* **gdb \<program\>** lance une session de debugage avec l'exécutable **program**
* **gdb \<program\> n°ps** lance une session **program** en cours d'exécution de numéro de process **ps**
* **gdb \<program\> -q** lance gdb sans afficher les informations légales

# Exécution d'un programme

* **(gdb) command params #comment** **command** est la commande à exécuter, **params** est le ou les paramètres, un commentaire se met avec un #
* **(gdb) apropos \<commmand\>** donne plus d'information sur **command**
* **(gdb) run \<args\>** exécute le programme, avec **args** en argument (facultatif)
* **(gdb) start** exécute le programme avec un breakpoint
* **(gdb) show args** affiche la ligne d'arguments actuelle du programme
* **(gdb) set args \<args\>** règle la ligne d'arguments à **args**
* **(gdb) show env \<var\>** affiche **var** (facultatif) ou toutes les variables d'environnement
* **(gdb) unset env \<var\>** supprime la variable d'environnement **var**
* **(gdb) pwd**
* **(gdb) cd \<dir\>**
* **(gdb) kill** stoppe l'exécution du programme en cours

# Placement de points d'arrêts

* **(gdb) info break \<breaknum\>** affiche **breaknum** (facultatif) ou toutes les breakpoints
* **(gdb) break \<position\>** place un breakpoint à **position**
* **(gdb) break \<position\> if \<condition\>** place un breakpoint à **position** si il y a **condition**
* **(gdb) clear \<position\>** supprime le breakpoint à **position**
* **(gdb) watch \<variable\>** indique à GDB de s'arrêter dès que **variable** est modifiée
* **(gdb) rwatch \<variable\>** indique à GDB de s'arrêter dès que **variable** est lue
* **(gdb) awatch \<variable\>** indique à GDB de s'arrêter dès que **variable** est lue ou modifiée
* **(gdb) delete \<breaknum\>** supprime le breakpoint de numéro **breaknum** (option facultative)
* **(gdb) disable \<breaknum\>** désactive le breakpoint de numéro **breaknum** (option facultative)
* **(gdb) enable \<breaknum\> once** active le breakpoint de numéro **breaknum** (option facultative) puis le désactive
* **(gdb) enable \<breaknum\> delete** active le breakpoint de numéro **breaknum** (option facultative) puis le supprime
* **(gdb) step \<count\>** exécute les **count** prochaines lignes de code (facultatif, 1 sinon)
* **(gdb) next \<count\>** exécute les **count** prochaines lignes de code (facultatif, 1 sinon) sauf appel de fonction
* **(gdb) until** exécute toutes les instructions jusqu'à la prochaine ligne du programme

# Contrôle des variables et des registres

* **(gdb) show values \<n\>** affiche dix valeurs de l'historique, de **n-5** à **n+4**
* **(gdb) print /\<format\> \<expr\>** affiche **expr** en utilisant le format spécifié, les formats sont les suivants :
* * **x** : entier affiché en hexadécimal
* * **d** : entier signé
* * **u** : entier non-signé
* * **o** : entier affiché en octal
* * **t** : entier affiché en binaire
* * **a** : adresse
* * **c** : caractère
* * **f** : flottant
* **(gdb) print /\<format\> *\<adresse\>@\<taille\>** affiche un tableau de taille et d'adresse de départ spécifiées dans le format
* **(gdb) info all-registers** affiche la liste complète des registres
* **(gdb) info registers** affiche la liste des registres principaux
* **(gdb) examine [/tfu] \<adresse\>** affiche le contenu de la mémoire à partir de **adresse**
* **(gdb) set $\<variable\> = \<value\>** modifie la valeur contenue dans la variable GDB, il s'agit par exemple d'un registre
* **(gdb) set variable \<variable\> = \<value\>** modifie le contenu d'une variable du programme

# Contrôle du déroulement de l'exécution

* **(gdb) frame \<frameid\>** affiche les informations sur la frame (facultatif)
* **(gdb) select-frame \<frameid\>** se place dans la frame indiquée
* **(gdb) up \<n\>** remonte de **n** frames (facultatif, 1 sinon)
* **(gdb) down \<n\>** descend de **n** frames (facultatif, 1 sinon)
* **(gdb) info frame** affiche des informations détaillées sur la frame courante
* **(gdb) backtrace** affich1e le stack d'appel (liste des frames)
* **(gdb) backtrace full** affiche le stack d'appel avec le contenu des variables locales pour chaque frame
* **(gdb) jump \<position\>** continue l'exécution à l'endroit spécifié (comme les breakpoints)
* **(gdb) return \<value\>** exécute l'instruction de retour de la fonction dans laquelle vous vous trouvez (facultatif)
* **(gdb) call \<expression\>** identique à print, sauf que n'affiche le résultat que s'il est différent de void
