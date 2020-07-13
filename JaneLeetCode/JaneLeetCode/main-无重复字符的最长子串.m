//
//  main.m
//  JaneLeetCode
//
//  Created by yuqin on 2020/7/13.
//  Copyright © 2020 JJS. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
题目描述
3. 无重复字符的最长子串
给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。

示例 1:   输入: "abcabcbb"  输出: 3   解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
示例 2:   输入: "bbbbb"     输出: 1   解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
示例 3:   输入: "pwwkew"    输出: 3   解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
*/
NSInteger maxLengthOfSubString(NSString *string) {
    return 0;
}


/*
  不能使用任何的API；时间复杂度O(1)，空间复杂度O(1)
  例如：3、5、2；返回3
 */
int middle(int a, int b, int c)
{
    int temp = 0;
    if (a > b) {
        temp = a; a = b; b = temp;
    }
    if (a > c) {
        temp = a; a = c; c = temp;
    }
    if (b > c) {
        temp = b; b = c; c = temp;
    }
    
    return b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int mid1 = middle(1, 3, 2);
        int mid2= middle(9, 10, 8);
        int mid3= middle(0, 0, 1);
        NSLog(@"%d, %d, %d",mid1,mid2,mid3);
    }
    return 0;
}

