# ici, un commentaire

# compilation simple avec un Makefile :

exemple : exemple.h exemple.c
  gcc -Wall -c exemple.c exemple.h -o exemple
  
# raccourcis du Makefile 
# $@  nom de la cible
# $<  première dépendance de la liste
# $?  dépendances les plus récentes
# $^  toutes les dépendances


# $(BIN)      est le nom du fichier binaire généré
# $(OBJECTS)  sont les objets qui seront générés après la compilation
# $(CC)       est le compilateur utilisé
# $(CFLAGS)   sont les options de compilation
# all est la première règle à être exécutée car elle est la première dans le fichier Makefile. Notons que les
# dépendances peuvent être remplacées par une variable, ainsi que n’importe quelle chaîne de caractères des commandes


BIN = foo
OBJECTS = main.o foo.o
CC = gcc
CFLAGS= -Wall -g
LDFLAGS=-lwebsockets -lm

all: $(OBJECTS)
  $(CC) $(OBJECTS) –o $(BIN)
main.o: main.c main.h
  $(CC) –c main.c
foo.o: foo.c foo.h main.h
  $(CC) –c foo.c


# exemple de compilation pour narvalo

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
mrproper: clean
  rm -rf $(EXEC) 
  
# à éclaircir : all, clean , mrproper
