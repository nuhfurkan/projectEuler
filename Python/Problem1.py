def findSum(max, dvn):
    sum = 0
    ptr = dvn
    while ptr < max:
        sum += ptr
        ptr += dvn
    
    return sum

def findMultiples(max, dvn1, dvn2):
    return findSum(max, dvn1) + findSum(max, dvn2) - findSum(max, dvn1*dvn2)

# first parameter is upper limit
# second parameter is number 1
# third parameter is number 2

x = findMultiples(1000, 3, 5)
print(x)
