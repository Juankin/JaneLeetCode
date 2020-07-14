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
    if(string.length == 0) return 0;
    NSMutableSet *stringSet = [NSMutableSet set];
    NSInteger maxStr = 0;
    NSInteger left = 0;
    NSMutableArray *charsArray = @[].mutableCopy;
    for (NSInteger i = 0; i < string.length; i++) {
        if (i < string.length) {
            [charsArray addObject:[string substringWithRange:NSMakeRange(i, 1)]];
        }
    }
    for (int i = 0; i < charsArray.count; i++) {
        if ([stringSet containsObject:charsArray[i]]) {
            maxStr = MAX(maxStr, (i - left));
            while (![charsArray[left] isEqualToString:charsArray[i]]) {
                [stringSet removeObject:charsArray[left]];
                left++;
            }
            left++;
        } else {
            [stringSet addObject:charsArray[i]];
        }
    }
    NSInteger maxLegth = MAX(maxStr, charsArray.count - left);
    NSLog(@"maxLength ===%ld，最长子串为：%@",(long)maxLegth,[stringSet description]);
  
    return maxLegth;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        maxLengthOfSubString(@"abcabcbb");
        maxLengthOfSubString(@"bbbbb");
        maxLengthOfSubString(@"pwwkew");
    }
    return 0;
}

