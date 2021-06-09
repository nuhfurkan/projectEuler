//
//  Problem5.h
//  ProjectEuler
//
//  Created by Furkan Erturk on 10/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

#ifndef Problem5_h
#define Problem5_h
#include <iostream>
using namespace std;

int factors[20];

void findFactors(int n) {
    int i = 2;
    int localFactors[20];
    for (int i = 0; i < 20; i++) {
        localFactors[i] =0;
    }
    
    while (i <= n) {
        if (!(n % i)) {
            localFactors[i]++;
            n /= i;
        } else {
            i++;
        }
    }
    
    // comparing factors
    for (int i = 2; i < 20; i++) {
        if (localFactors[i] > factors[i]) {
            factors[i] = localFactors[i];
        }
    }
}

int calculateNum() {
    int sum = 1;
    for (int i = 2; i < 20; i++) {
        while (factors[i]) {
            sum *= i;
            factors[i]--;
        }
    }
    return sum;
}

int findSmallestDivisible(int n) {
    while (n) {
        findFactors(n);
        n--;
    }
        
    return calculateNum();
}

// Call the function findSmallestDivisible with necessary parameters
#endif /* Problem5_h */
