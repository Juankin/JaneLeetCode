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
 
 思路：我们可以用迭代的方法来实现上述算法。当 l1 和 l2 都不是空链表时，
      判断 l1 和 l2 哪一个链表的头节点的值更小，将较小值的节点添加到结果里，当一个节点被添加到结果里之后，
 将对应链表中的节点向后移一位。
 算法：
 首先，我们设定一个哨兵节点 prehead ，这可以在最后让我们比较容易地返回合并后的链表。我们维护一个 prev 指针，我们需要做的是调整它的 next 指针。然后，我们重复以下过程，直到 l1 或者 l2 指向了 null ：如果 l1 当前节点的值小于等于 l2 ，我们就把 l1 当前的节点接在 prev 节点的后面同时将 l1 指针往后移一位。否则，我们对 l2 做同样的操作。不管我们将哪一个元素接在了后面，我们都需要把 prev 向后移一位。

 在循环终止的时候， l1 和 l2 至多有一个是非空的。由于输入的两个链表都是有序的，所以不管哪个链表是非空的，它包含的所有元素都比前面已经合并链表中的所有元素都要大。这意味着我们只需要简单地将非空链表接在合并链表的后面，并返回合并链表即可。
*/
ListNode* mergeTwoLists(ListNode *l1, ListNode *l2){
    if (!l1) {
        return l2;
    }
    if (!l2) {
        return l1;
    }
    ListNode *newNode = [ListNode listNodeWithValue:-1];//哨兵节点
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
        
//        NSLog(@"mergeNode===%@",mergeNode.description);
    }
    return 0;
}

