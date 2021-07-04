//
//  Problem33.h
//  ProjectEuler
//
//  Created by Furkan Erturk on 04/07/2021.
//  Copyright © 2021 Nuh Furkan Erturk. All rights reserved.
//

#ifndef Problem33_h
#define Problem33_h

using namespace std;

double findPrdOf() {
    double prd = 1;
    
    for (int l = 10; l < 100; l++) {
        for (double i = 10; i < l; i++) {
            if (l % 10 != 0) {
                //cout << "i_ " << i << " l_ " << l << endl;
                //cout << (i/10) << "---" << (l%10) << "---" << (i/10)/(l%10) << endl;
                //cout << double(i/l) << endl;
                if ((int(i/10))/double(l%10) == double(i/l) && l/10 == int(i)%10) {
                    cout << "i_ " << i << " l_ " << l << endl;
                    prd *= i/l;
                }
            }
        }
    }
    
    cout << prd << endl;
    return 1/prd;
}

#endif /* Problem33_h */
