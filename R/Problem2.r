nm <- 1
temp <- 1
sum <- 0

while (nm < 4000000) {
    tp <- nm
    nm <- nm + temp
    temp <- tp
    if (nm %% 2 == 0) {
        sum <- nm + sum
    }
}

print(sum)