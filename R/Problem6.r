sumSquare <- function(x) {
    sum <- 0
    for (l in 1:x) {
       sum <- sum+l
    }
    return (sum*sum)
}

squareSum <- function(x) {
    sum <- 0
    for (l in 1:x) {
       sum <- sum+(l*l)
    }
    return (sum)
}

sumSquareDifference <- function(x) {
    return (sumSquare(x) - squareSum(x))
}

sumSquareDifference(100)