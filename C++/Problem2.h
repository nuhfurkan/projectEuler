//
//  Problem2.h
//  ProjectEuler
//
//  Created by Furkan Erturk on 09/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

#ifndef Problem2_h
#define Problem2_h

int findSumEvenFibonacci(int max) {
    int ptr1 = 1;
    int ptr2 = 2;
    int temp;
    int sum = 0;
    
    while (ptr2 <= max) {
        if (!(ptr2 % 2)) {
            sum += ptr2;
        }
        temp = ptr1;
        ptr1 = ptr2;
        ptr2 += temp;
    }
    
    return sum;
}

#endif /* Problem2_h */
