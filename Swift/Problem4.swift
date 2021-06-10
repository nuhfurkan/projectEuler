//
//  Problem4.swift
//  ProjectEulerSwift
//
//  Created by Furkan Erturk on 10/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

import Foundation

// returns the reverse of the parameter string
func reverseString(str: String) -> String {
    var strin = ""
    for index in str {
        strin.insert(index, at: strin.startIndex)
    }
    return strin
}

// checks if the parameter is polindrome
func polindrome(num: Int) -> Bool {
    let number = "\(num)"
    let reverseNumber = reverseString(str: number)
    
    if number == reverseNumber {
        return true
    }
    return false
}

// checks if there are exatly two three digit divisors
func findTwoThreeDigits(nums: Int) -> Bool {
    var x = 999
    
    while x >= 100 {
        if nums % x == 0 && nums/x <= 999 && nums/x >= 100 {
            return true
        }
        x -= 1
    }
    
    return false
}


func calculateMaxPlondrome() -> Int {
    var max = 999999
    while max >= 10000 {
        if polindrome(num: max) {
            //print(max)
            if findTwoThreeDigits(nums: max) {
                return max
            }
        }
        max -= 1
    }
    return -1
}

// call the function calculateMaxPolindrome()
