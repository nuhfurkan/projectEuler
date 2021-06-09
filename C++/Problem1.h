//
//  Problem1.h
//  ProjectEuler
//
//  Created by Furkan Erturk on 09/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

#ifndef Problem1_h
#define Problem1_h

int caculateSum(int maxnum, int nr) {
    int ptr = nr;
    int sum = 0;
    while (ptr < maxnum) {
        sum += ptr;
        ptr += nr;
    }
    return sum;
}

int problem1(int maxnum, int nr1, int nr2) {
    int nr3 = nr1*nr2;
    return caculateSum(maxnum, nr1) + caculateSum(maxnum, nr2) - caculateSum(maxnum, nr3);
}

// Call the function problem1 with necessary parameters
#endif /* Problem1_h */
