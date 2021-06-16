//
//  Problem25.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 16/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation


// ATTENTION - BigNumber.swift from the repo Data-Structures-and-Algortihms was used in this problem
func firstIndexWithThousand() -> Int {
    var first = BigNumber(newNumber: "1")
    var sec = BigNumber(newNumber: "1")
    var n = 2
    
    while first.myNumber.count < 1000 {
        let temp:BigNumber = first
        first = first + sec
        sec = temp
        n += 1
    }
    return n
}
// call the function firstIndexWithThousand()
