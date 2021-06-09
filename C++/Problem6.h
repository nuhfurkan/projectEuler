//
//  Problem6.h
//  ProjectEuler
//
//  Created by Furkan Erturk on 10/06/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

#ifndef Problem6_h
#define Problem6_h

int squares(int n) {
    int sum = 0;
    while (n > 0) {
        sum += n*n;
        n--;
    }
    return sum;
}

int sumSquares(int n) {
    int sum = 0;
    while (n > 0) {
        sum += n;
        n--;
    }
    return sum*sum;
}

int sumSquareDifferece(int n) {
    return sumSquares(n) - squares(n);
}

// Call the function sumSquareDifferece with necessary parameters
#endif /* Problem6_h */
