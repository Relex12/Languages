def DecimalToBinary(num):
    if num > 1:
        DecimalToBinary(num // 2)
        print (num % 2, end = '')

i = 3
primes = [2]
print (str(primes[0]), ': ', end = '')
DecimalToBinary(primes[0])
print ('')
while True:
    prime = True
    for j in primes:
        if i%j == 0:
            prime = False
            break;
    if prime:
        primes.append(i)
        print (i, ': ', end = '')
        DecimalToBinary(i)
        print ('')
    i-=-1
