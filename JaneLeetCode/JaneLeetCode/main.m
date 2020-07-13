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
      NSString *string = @"ssasa";

        NSInteger letfIndicator = 0;

        NSInteger longest = 0;

        NSMutableSet *strSet = [NSMutableSet set];

        //字符串转换为单字符数组

        NSMutableArray *charsArray = @[].mutableCopy;

        for (NSInteger i = 0; i < string.length; i++) {

            if (i < string.length) {

                NSString *str = [string substringWithRange:NSMakeRange(i,1)];

                [charsArray addObject:str];

            }

        }

        NSLog(@"charsArray = %@",charsArray);

        for (int i = 0; i < [charsArray count]; i++) {

            NSString *indexStr = charsArray[i];

            if ([strSet containsObject:indexStr]) {

                longest = MAX(longest,(i - letfIndicator));

                while (![charsArray[letfIndicator] isEqualToString:indexStr]) {

                    [strSet removeObject:charsArray[letfIndicator]];

                    letfIndicator++;

                }

                letfIndicator++;

            }else{

                [strSet addObject:indexStr];

            }

        }

        NSInteger maxLength = MAX(longest,[charsArray count] - letfIndicator);

        NSLog(@"maxLength = %ld",maxLength);
  
    return 0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSLog(@"%d, %d, %d",mid1,mid2,mid3);
    }
    return 0;
}

