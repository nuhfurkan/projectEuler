//
//  Problem2.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 10/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

func fibonacci(max:Int) -> Int {
    var sum = 0
    var n = 2
    var ptr = 1
    while n < max {
        if (n % 2) == 0 {
            sum += n
        }
        let temp = n
        n += ptr
        ptr = temp
    }
    return sum
}

// call fibonacci function with the parameter maximum number
// in this case -> fibonacci(max: 4000000)
