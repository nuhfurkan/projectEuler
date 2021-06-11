//
//  Problem8.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 11/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

// fucntion to see the relevant substring
func showIndex(num: Int, str: String) -> Void {
    var subStr = ""
    for indx in num...(num+12) {
        let x = str.index(str.startIndex, offsetBy: indx)
        subStr.append(str[x])
    }
    print(subStr)
}

func greatestThirteen(str: String) -> Int {
    var index = 0
    var sum = 0
    var ptr = 0
    for l in 0...(1000-13) {
        index = l
        var temp = 1
        for x in index...index+12 {
            let indx = str.index(str.startIndex, offsetBy: x)
            if let nm = str[indx].wholeNumberValue {
                temp *= nm
            } else {
                print ("some problem at \(x)")
            }
            
        }
        if temp > sum {
            ptr = l
            sum = temp
        }
    }
    //showIndex(num: ptr, str: str)
    
    return sum
}

// call the function greatestThirteen with necessary parameters
// in this case the 1000 word
// note that string must not have any line breaks
