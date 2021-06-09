//
//  Problem3.h
//  ProjectEuler
//
//  Created by Furkan Erturk on 10/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

#ifndef Problem3_h
#define Problem3_h
#include <iostream>
#define ll long long
#include <vector>

using namespace std;
vector<ll> nums;

ll findFactors(ll nr) {
    ll i = 2;
    while (i < nr) {
        if (nr % i == 0) {
            nums.push_back(i);
            findFactors(nr / i);
            break;
        }
        i++;
    }
    if (i == nr)
        nums.push_back(nr);
    
    return nums.back();
}

#endif /* Problem3_h */
