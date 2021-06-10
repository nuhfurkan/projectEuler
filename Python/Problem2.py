def fibonacci(max):
    sum = 0
    ptr = 1
    num = 2
    while num < max:
        if (num%2 == 0):
            sum += num
        temp = num
        num += ptr
        ptr = temp
    return sum

# only parameter is the max value
x = fibonacci(4000000)
print(x)
