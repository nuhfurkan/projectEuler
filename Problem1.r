sums <- function(n, x) {
    m <- 0
    l <- 0
    while (l < x) {
        #print(l)
        m <- m+l
        l <- l+n
    }
    return (m)
}

sumsAll <- function(x, n, m) {
    nm <- x*n
    #print(nm)
    return (sums(x, m) + sums(n, m) - sums(nm, m))
}

num <- sumsAll(3, 5, 1000)
print(paste("num", num, sep=" "))