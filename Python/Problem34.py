import math

ptr = 3
cnt = 0
allSum = 0


while cnt < 100000:
    strn = str(ptr)
    #print(strn)
    sum = 0
    for x in strn:
        sum += math.factorial(int(x))
    if sum == ptr:
        allSum += ptr
        #print("allSum_", allSum)
        #print("cnt_", cnt)
        cnt = 0
    cnt+=1
    ptr+=1

print(allSum)