findLargestprime <- function(x) {
    n <- 2
    while (x %% n != 0) {
        n <- n+1
    } 

    if (n == x) {
       return (x)
    }
    return (findLargestprime(x/n))
}

l <- findLargestprime(600851475143)
print(l)