//
//  Problem15.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 13/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

func nrRoutes(num: Int) -> Int {
    var res:Double = 1
    var nr:Double = Double(num)
    for x in num+1...2*num {
        //print("x= \(x)")
        res = res*Double(x)
        res = res/nr
        nr -= 1
    }
    
    // since there is a double casting issue I used round()
    return Int(round(res))
}

// call the function nrRoutes with necessary parameter
// in this case nrRoutes(num: 20)
