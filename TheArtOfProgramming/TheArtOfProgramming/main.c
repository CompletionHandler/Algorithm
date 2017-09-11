//
//  main.c
//  TheArtOfProgramming
//
//  Created by cy on 11/09/2017.
//  Copyright © 2017 com.jiemu.TheArtOfProgramming. All rights reserved.
//

#include <stdio.h>
/*
 “给定一个字符串，要求把字符串前面的若干个字符移动到字符串的尾部，如把字符串“abcdef”前面的2个字符“ab” 移动到字符串的尾部，即变成“cdefab”。请写一个函数完成此功能，要求对长度为n的字符串操作的时间复杂度为 O(n)，空间复杂度为 O(1)。”
 */
void LeftShiftOne(char *s, int n)
{
    assert(s != NULL);
    char t = s[0];  //保存第一个字符”
    for (int i = 1; i < n; i++)
    {
        s[i - 1] = s[i];
    }
    s[n - 1] = t;
}

void LeftShiftString(char *s, int n, int m)
{
    while (m--)
    {
        LeftShiftOne(s, n);
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    return 0;
}
