//
//  main.m
//  JaneLeetCode
//
//  Created by yuqin on 2020/7/13.
//  Copyright © 2020 JJS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListNode : NSObject

@property (nonatomic, assign) NSInteger value;
@property (nonatomic, strong) ListNode *next;

@end


@implementation ListNode

- (instancetype)initNodeWithValue:(NSInteger)value {
    if (self = [super init]) {
        self.value = value;
        self.next = nil;
    }
    return self;
}

+ (instancetype)listNodeWithValue:(NSInteger)value {
    return [[ListNode alloc] initNodeWithValue:value];
}

@end

/*
 21. 合并两个有序链表
 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。
 示例：
 输入：1->2->4, 1->3->4
 输出：1->1->2->3->4->4
 */
ListNode* mergeTwoLists(ListNode *l1, ListNode *l2){
    if (!l1) {
        return l2;
    }
    if (!l2) {
        return l1;
    }
    ListNode *newNode = [ListNode listNodeWithValue:-1];
    ListNode *prev = newNode;
    while (l1 && l2) {
        if (l1.value <= l2.value) {
            prev.next = l1;
            l1 = l1.next;
        } else {
            prev.next = l2;
            l2 = l2.next;
        }
        prev = prev.next;
    }
    prev.next = !l1 ? l2 : l1;
    return newNode.next;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ListNode *node11 = [[ListNode alloc] initNodeWithValue:1];
        ListNode *node12 = [[ListNode alloc] initNodeWithValue:2];
        ListNode *node13 = [[ListNode alloc] initNodeWithValue:4];
        node11.next = node12;
        node12.next = node13;
        
        ListNode *node21 = [[ListNode alloc] initNodeWithValue:1];
        ListNode *node22 = [[ListNode alloc] initNodeWithValue:3];
        ListNode *node23 = [[ListNode alloc] initNodeWithValue:4];
        node21.next = node22;
        node22.next = node23;
        
        ListNode *mergeNode = mergeTwoLists(node11, node21);
        
        NSLog(@"mergeNode===%@",mergeNode.description);
    }
    return 0;
}

