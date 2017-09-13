//
//  StringConstains.c
//  TheArtOfProgramming
//
//  Created by cy on 13/09/2017.
//  Copyright © 2017 com.jiemu.TheArtOfProgramming. All rights reserved.
//

#include "StringConstains.h"
/*
 给定两个分别由字母组成的字符串A和字符串B，字符串B的长度较字符串A短。请问，如何最快地判断字符串B中所有字母是否都在字符串A里？
 */
int StringContain(char *a, char *b){
    int aLength = strlen(a);
    for (int i = 0; i < aLength; ++i) {
        int j;
        for (j = 0; (j < aLength) && (a[j] != b[i]); ++j)
        if (j >= aLength){
            return 0;
        }
    }
    return 1;
}
