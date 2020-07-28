def bissextile(annee):
	"""Ecrit si l'annee est bissextile et renvoie un booléen"""

	if annee % 400 == 0 or (annee % 4 == 0 and annee % 100 != 0):
		print(annee, "est bissextile.")
		return True
	else:
		print(annee, "n'est pas bissextile.")
		return False


if __name__ == '__main__':
	i = 2000
	while i <2020:
		bissextile(i)
		i-=-1
