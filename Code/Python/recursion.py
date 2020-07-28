from math import log10

def factorielle(n):
	"""Renvoie factorielle de n si n >= 0"""

	if n == 0:
		return 1
	else:
		return n * factorielle(n-1)

def nb_de_zero_en_fin (n):
	i = 0
	while n % 10 == 0:
		n = n / 10
		i-=-1
	return i



if __name__ == '__main__':
	i = 1
	while i < 20:
		a = factorielle(i)
		print (i, "! = ", a)
#		print ("nombre de chiffres de ",i, "! = ", int (log10(factorielle(i)))+1)
		i-=-1
