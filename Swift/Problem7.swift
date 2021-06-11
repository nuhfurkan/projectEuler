//
//  Problem7.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 11/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

class PrimeFinder {
    var primes: [Int] = []
    
    func checkIfPrime(num: Int) -> Void {
        for prime in primes {
            if (num%prime) == 0 {
                return
            }
        }
        //print("prime is \(num)")
        primes.append(num)
    }
    
    func findNthPrime(num: Int) -> Int {
        var number = 2
        
        while primes.count < num {
            checkIfPrime(num: number)
            number += 1
        }
        
        if let res = primes.last {
            return res
        } else {
            return -1
        }
    }
}

// call the function findNthPrime with necessary parameters
// in this case findNthPrime(num: 10001)
