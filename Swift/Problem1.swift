//
//  Problem1.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 10/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

func sumMultiples(max: Int, num: Int) -> Int {
    var sum = 0
    var ptr = num
    while ptr < max {
        sum += ptr
        ptr += num
    }
    return sum
}

func sumTwoMultiples(max: Int, num1: Int, num2:Int) -> Int {
    return sumMultiples(max: max, num: num1) + sumMultiples(max: max, num: num2) - sumMultiples(max: max, num: num1*num2)
}

// call sumTwoMultiples with (max Bound, number 1, number 2) as parameters
// in our case -> sumTwoMultiples(1000, 3, 5)
