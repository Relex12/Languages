import pickle
import random
import os

def entrer_lettre():
    lettre = ''
    while len(lettre) != 1:
        lettre = input('Indiquez votre lettre : ')
    return lettre

# Nombre de coups perdants autorisés
nb_coups = 8

# Liste des mots du pendu
liste_mots = [
    "armoire",
    "boucle",
    "buisson",
    "bureau",
    "chaise",
    "carton",
    "couteau",
    "fichier",
    "garage",
    "glace",
    "journal",
    "kiwi",
    "lampe",
    "liste",
    "montagne",
    "remise",
    "sandale",
    "taxi",
    "vampire",
    "volant",
]

###################
# Avant la partie #
###################

# Récupération pseudo
pseudo = input('Veuillez indiquer votre pseudo : ')

if 'score' in os.listdir():
    # Récupération des scores
    with open('score', 'rb') as score:
        scores_enregistres = pickle.Unpickler(score).load()

    if pseudo in scores_enregistres.keys():
        print ('Ton meilleur score est de', scores_enregistres[pseudo])
    else:
        print ('Bienvenue pour ta première partie', pseudo)

else:
    scores_enregistres = {}
    print ('Bienvenue pour ta première partie', pseudo)


############################
# Déroulement de la partie #
############################

mot_a_deviner = random.choice(liste_mots)
print (mot_a_deviner)

mot_incomplet = '*'*len(mot_a_deviner)

coups_restant = nb_coups

while mot_incomplet != mot_a_deviner and coups_restant > 0:
    print (mot_incomplet)
    coup_joue = entrer_lettre()
    find = False
    for i, lettre in enumerate(list(mot_a_deviner)):
        if lettre == coup_joue:
            mot_incomplet = mot_incomplet[:i]+lettre+mot_incomplet[i+1:]
            find = True
    if find:
        print ('Trouvé !')
    else:
        coups_restant -= 1
        print ('Perdu, il reste {} coups'.format(coups_restant))

#################
# Fin de partie #
#################
if coups_restant > 0:
    print ('Tu as fait un score de', coups_restant)
else:
    print ('Tu as perdu')

if pseudo not in scores_enregistres.keys() or scores_enregistres[pseudo] < coups_restant:
    scores_enregistres[pseudo] = coups_restant

with open('score', 'wb') as score:
    pickle.Pickler(score).dump(scores_enregistres)
