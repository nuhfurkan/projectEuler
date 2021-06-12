//
//  Problem12.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 12/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation
class  TriangleDivs {
    var primes: [Int] = []
    
    func findprimeMultips(num: Int) -> Int {
        var x = 2
        while x <= num {
            if num%x == 0 {
                primes.append(x)
                findprimeMultips(num: num/x)
                break
            } else {
                x+=1
            }
        }
        
        var count = 1
        var temp: Int = -1
        var numdivs = 1
        for x in primes {
            if x == temp {
                count += 1
            } else {
                numdivs *= (count+1)
                count = 1
                temp = x
            }
        }
        
        return numdivs
    }
    
    func displayPrimes() -> [Int] {
        for n in primes {
            print(n)
        }
        return primes
    }
    
    func firstTriangleWithDivs() -> Int {
        var point = 1
        var number = 2
        
        while findprimeMultips(num: point) < 500 {
            point += number
            number += 1
            while primes.count > 0 {
                primes.remove(at: 0)
            }
        }
        displayPrimes()
        
        return point
    }
}

// call method firstTriangleWithDivs()
