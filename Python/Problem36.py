def isPolindrome(n):
    strn = str(n)
    
    for l in range(len(strn)):
        #print(l)
        if strn[l] != strn[len(strn)-l-1]:
            return False
    return True
    
def fundSumsOfDoublePols(n):
    sums = 0
    ptr = 1
    while ptr < n:
        if isPolindrome(ptr) and isPolindrome(format(ptr, "b")):
            sums+=ptr
            #print(ptr)
        ptr+=1
    return sums

num = fundSumsOfDoublePols(1000000)
print(num)