# ici, un commentaire

# EXEMPLE --------------------------------------------------------------------------
# compilation simple avec un Makefile

exemple : exemple.h exemple.c
  gcc -Wall exemple.c exemple.h -o exemple
  

# RACCOURCIS -----------------------------------------------------------------------
# $@  nom de la cible
# $<  première dépendance de la liste
# $?  dépendances les plus récentes
# $^  toutes les dépendances


# VARIABLES ------------------------------------------------------------------------
# définition de variables en majuscule, pour un fichier, un compilateur, un argument, etc...
# exemple : CC = gcc


# CIBLE ET COMMANDE ----------------------------------------------------------------
# la commande make peut se voir passer un argument, seul la cible correspondante sera compilée
# il est aussi possible de faire exécuter des commandes Bash à make, notamment rm pour supprimer des fichiers


# EXEMPLE --------------------------------------------------------------------------
# compilation avec étape édition de liens (.o), utilisation de variables et de raccourcis

CC=gcc
CFLAGS=-Wall -g
LDFLAGS=-lwebsockets -lm

narvalo: narvalo.o client.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)
client.o: client.c narvalo.h client.h
	$(CC) $(CFLAGS) -o $@ -c $<
narvalo.o: narvalo.c narvalo.h
	$(CC) $(CFLAGS) -o $@ -c $<
clean:
	rm -rf *.o

# COMPILATION CONDITIONNELLE -------------------------------------------------------
# on peut définir des constantes lors de la compilation
# pour cela on utilse l'argument -D EXEMPLE=2 -D NOMBRE

# dans le code en C, le # ifdef EXEMPLE et le #ifndef permettent de compiler selon la présence de ces arguments
# ne pas oublier de #endif
