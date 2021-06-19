//
//  Problem28.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 19/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

func sumsOfSpiral(num: Int) -> Int {
    var ptr = 1
    var cnt = 1
    var sum = 0
    var temp = 0
    while ptr < num*num {
        while cnt > 0 {
            ptr += temp
            //print(ptr)
            sum += ptr
            cnt -= 1
        }
        cnt = 4
        temp += 2
    }
    
    //print(sum)
    return sum
}
// call the function sumsOfSpiral(num: ***) with necessary parameter
// in this case sumsOfSpiral(num: 1001)
