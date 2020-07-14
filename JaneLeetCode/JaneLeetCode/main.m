//
//  main.m
//  JaneLeetCode
//
//  Created by yuqin on 2020/7/13.
//  Copyright © 2020 JJS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListNode : NSObject

@property (nonatomic, assign) NSInteger val;
@property (nonatomic, strong) ListNode *next;

@end

@implementation ListNode
@end
/*
 2. 两数相加
 给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。您可以假设除了数字 0 之外，这两个数都不会以 0 开头。
 示例：
 输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 0 -> 8
 原因：342 + 465 = 807
 */
ListNode *addTwoNumbers(ListNode *l1, ListNode *l2) {
    ListNode *resultNode = [[ListNode alloc] init];
    
    return resultNode;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        maxLengthOfSubString(@"abcabcbb");
        maxLengthOfSubString(@"bbbbb");
        maxLengthOfSubString(@"pwwkew");
//        NSLog(@"%d, %d, %d",mid1,mid2,mid3);
    }
    return 0;
}

