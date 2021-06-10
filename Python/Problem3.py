lst = []
def findPrime(num):
    x = 2
    while x <= num:
        if (num%x) == 0:
            lst.append(x)
            findPrime(num/x)
            break
        else:
            x += 1


# only parameter is the number
# note that lst contains all the prime factors
findPrime(600851475143)
lst.sort()
print(lst[-1])