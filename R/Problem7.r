lst <- list(2)

checkIfPrime <- function(x) {
    for (elem in lst) {
       if (x %% elem == 0) {
           return (FALSE)
       }
    }
    lst <<- append(lst, x)
    return (TRUE)
}

findPrimes <- function(x) {
    ptr <- 3
    while (length(lst) < x) {
        checkIfPrime(ptr)
        ptr <- ptr+1
    }
    return (ptr)
}

l <- findPrimes(10001)
print(l)