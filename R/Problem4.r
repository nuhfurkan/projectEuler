ifPolindrome <- function(x) {
    x <- toString(x)
    newStr <- strsplit(x, "")[[1]]
    newStr <- rev(newStr)
    newStr <- paste(newStr, collapse="")

    if (newStr == x) {
       return (TRUE)
    }
    return (FALSE)
}

ifSquare <- function(x) {
    cnt <- 999
    while (cnt >= 100) {
        if (x/cnt >= 100 && x/cnt <= 999 && as.integer(x/cnt) == x/cnt) {
           return (TRUE)
        }
        cnt <- cnt-1
    }
    return (FALSE)
}

findBiggest <- function(x) {
    while (x >= 0) {
        if (ifPolindrome(x)) {
           if (ifSquare(x)) {
                return (x)
           }
        }
        x <- (x-1)
    }
}
n<-1000000
findBiggest(n)