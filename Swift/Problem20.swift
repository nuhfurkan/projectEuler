//
//  Problem20.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 13/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

// ATTENTION - BigNumber.swift form the repo Data-Structures-and-Algorithms was used in this problem
func fact(num: Int) -> Int {
    var cnt = num
    var bgnm = BigNumber(newNumber: "1")
    while cnt > 0 {
        bgnm = bgnm * BigNumber(newNumber: String(cnt))
        cnt -= 1
    }
    
    let str = bgnm.toString()
    var sum = 0
    //print(bgnm.toString())
    
    for x in str {
        sum += x.wholeNumberValue ?? 0
    }
    
    return sum
}

// call the function fact(num: ***) with necessary parameter
// in this case fact(num: 100)
