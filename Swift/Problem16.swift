//
//  Problem16.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 19/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

func sumPowerDigits(num: Int, power: Int) -> Int {
    let bgnm2 = BigNumber(newNumber: String(num))
    var resNumber = BigNumber(newNumber: "1")
    
    for _ in 1...power {
        resNumber = resNumber * bgnm2
    }
    
    let str = resNumber.toString()
    
    var sumDigits = 0
    for x in str {
        sumDigits += x.wholeNumberValue ?? 0
    }
    
    return sumDigits
}

