//
//  Problem4.h
//  ProjectEuler
//
//  Created by Furkan Erturk on 13/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

#ifndef Problem4_h
#define Problem4_h

#include <string>
using namespace std;

bool ifPolindrome(int num) {
    string newStr = to_string(num);
    for (int i = 0; i < newStr.size()/2; i++) {
        if (newStr.at(i) != newStr.at(newStr.size()-i-1)) {
            return false;
        }
    }
    return true;
}

bool checkDivisors(int n) {
    int l = 999;
    //cout << "Check_" << n << endl;
    while (l >= 100) {
        if (n%l == 0 && n/l >= 100 && n/l <= 999) {
            return true;
        }
        l--;
    }
    return false;
}

int findLargestPolindromProduct() {
    int n = 1000000;
    while (n--) {
        if (ifPolindrome(n)) {
            if (checkDivisors(n)) {
                return n;
            }
        }
    }
    return -1;
}

// call the function findLargestPolindromProduct()

#endif /* Problem4_h */
