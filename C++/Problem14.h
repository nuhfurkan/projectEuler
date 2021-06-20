//
//  Problem14.h
//  ProjectEuler
//
//  Created by Furkan Erturk on 20/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

#ifndef Problem14_h
#define Problem14_h

#include <iostream>

#define ll long long
using namespace std;

ll findCollatzSeries(int mx) {
    ll lens[1000001];
    ll maxLen = 1;
    ll ptr = 1;
    while (ptr < mx) {
        ll len = 0;
        ll cnt = ptr;
        while (cnt != 1) {
            if (cnt < ptr) {
                len += lens[cnt];
                break;
            }
            if (cnt%2 == 0) {
                cnt /= 2;
            } else {
                cnt = 3*cnt + 1;
            }
            len += 1;
        }
        if (len > lens[maxLen]) {
            maxLen = ptr;
        }
        lens[ptr] = len;
        ptr++;
    }
    /*
    ptr = 1;
    while (ptr < mx) {
        cout << "Index is: " << ptr << " lenght is: " << lens[ptr]+1 << endl;
        ptr++;
    }
    */
    
    return maxLen;
}

// call the function findCollatzSeries(int max) with necessary parameter
// in this case findCollatzSeries(1000000)

#endif /* Problem14_h */
