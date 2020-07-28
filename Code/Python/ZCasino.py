
# def entrez_numero:
# 	x = imput ("Entrez un numéro entre 0 et 49 compris")
# 	try:
# 		int(x)
# 	except Exception as e:
# 		raise
# 	return x
#
#
# print ("Bienvenue dans le jeu du ZCasino, ici on joue à la roulette")
# print ("Le ZCasino vous donne 50$, ce sera votre somme de départ")
# somme_joueur = 50
#
# while continue:
# 	num_parie = entrez_numero()
# 	num_bille =
from random import randrange
from math import ceil

print ("Bienvenue au ZCasino, vous avez 500$")
print ("Nous allons pouvoir commencer")

continu = True
som_tot = 500

while continu:
    try:
        num_parie = int(input("Sur quel numéro souhaitez-vous parier ?      "))
        while 0 > num_parie or num_parie > 49:
            num_parie = int(input("Veuillez entrer un numéro entre 0 et 49      "))

        som_pari = int(input("Quel montant souhaitez-vous parier ?          "))
        while 0 > som_pari or som_pari > som_tot:
            som_pari = int(input("Veuillez entrer un nombre entre 0 et ", som_tot, "      "))

    except ValueError:
        ("Vous n'avez pas entré un nombre")

    som_tot -= som_pari

    num_reel = randrange(50)
    print ("Le résultat est ", num_reel)

    if num_reel == num_parie:
        som_tot += 3*som_pari
        print ("Vous avez récupéré 3 fois votre mise, soit ", 3*som_pari, "$")
    elif num_reel%2 == num_parie%2:
        som_tot += ceil(som_pari/2)
        print ("Vous avez récupéré la moitié de votre mise, soit ", ceil(som_pari/2), "$")
    else:
        print ("Vous avez perdu votre mise")

    print ("Vous avez encore ", som_tot, "$")

    continu = ("q" != input("Voulez-vous continuer ? (tapez q pour quitter)       "))

    if som_tot <= O:
        continu = False
        # faudrait mettre un message de défaite quand même
