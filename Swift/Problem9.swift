//
//  Problem9.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 12/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

func balanceNumber(num: Double) -> Bool {
    var bigNum = num-1
    var smallNum = 1000-num-bigNum
    
    while bigNum > smallNum{
        if (pow(bigNum, 2) + pow(smallNum, 2)) == pow(num, 2) {
            print(Int(smallNum*bigNum*num))
            //print("smallnum \(smallNum)")
            //print("bignum \(bigNum)")
            //print("num \(num)")
            return true
        }
        bigNum -= 1
        smallNum += 1
    }
    return false
}

func findTriplet() -> Void {
    for x in 335...997 {
        if balanceNumber(num: Double(x)) {
            return
        }
    }
}

// call the function findTriplet()
