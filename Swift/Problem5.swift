//
//  Problem5.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 11/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

func minNumber(num: Int) -> Int {
    var divisors: [Int: Int] = [:]
    for i in 1...num {
        let prms = FindPrimes()
        prms.findPrime(num: i)
        var divs: [Int: Int] = [:]
        
        for x in prms.primes {
            if var number = divs[x] {
                number += 1
                divs[x] = number
            } else {
                divs[x] = 1
            }
        }
        
        for key in divs.keys {
            if let number1 = divs[key] {
                if let number2 = divisors[key] {
                    if number1 > number2 {
                        divisors[key] = divs[key]
                    }
                } else {
                    divisors[key] = number1
                }
            }
        }
    }
    
    var nm = 1
    for y in divisors.keys {
        if var number = divisors[y] {
            while number > 0 {
                nm *= y
                number -= 1
            }
        }
    }
    
    return nm
}

// in this problem class from Problem 3 - "Problem3ClassImplementation.swift" - was used
// call the function minNumber(num: ***) with the parameter number
// in this case minNumber(num: 20)
