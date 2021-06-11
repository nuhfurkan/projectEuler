//
//  Problem6.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 11/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

func findSquareSum(num: Int) -> Int {
    var number = num
    var sum = 0
    while number > 0 {
        sum += number*number
        number -= 1
    }
    return sum
}

func findSumSquare(num: Int) -> Int {
    var number = num
    var sum = 0
    while number > 0 {
        sum += number
        number -= 1
    }
    return sum*sum
}

func findSumSquareDif(num: Int) -> Int {
    return findSumSquare(num: num) - findSquareSum(num: num)
}

// call findSumSquareDif with necessary parameters
// in this case findSumSquareDif(num: 100)
