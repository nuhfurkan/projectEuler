//
//  Problem3.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 10/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation
var primes: [Int] = []

func findPrime(num: Int) -> Int {
    var x = 2
    while x <= num {
        if num%x == 0 {
            primes.append(x)
            findPrime(num: num/x)
            break
        } else {
            x+=1
        }
    }
    return returnMaxPrime()
}

func displayPrimes() -> Void {
    for n in primes {
        print(n)
    }
}

func returnMaxPrime() -> Int {
    var max = 1
    for n in primes {
        if n > max {
            max = n
        }
    }
    return max
}

// call function findPrime(num: *input number*)
// where input number is the parameter
