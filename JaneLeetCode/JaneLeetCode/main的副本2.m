//
//  main.m
//  JaneLeetCode
//
//  Created by yuqin on 2020/7/13.
//  Copyright © 2020 JJS. All rights reserved.
//

#import <Foundation/Foundation.h>

 /*
 88. 合并两个有序数组
 给你两个有序整数数组 nums1 和 nums2，请你将 nums2 合并到 nums1 中，使 nums1 成为一个有序数组。
 
 说明:
 初始化 nums1 和 nums2 的元素数量分别为 m 和 n 。
 你可以假设 nums1 有足够的空间（空间大小大于或等于 m + n）来保存 nums2 中的元素。
 
 示例:输入:nums1 = [1,2,3,0,0,0], m = 3  nums2 = [2,5,6],       n = 3
 输出: [1,2,2,3,5,6]
 */
void mergeTwoArray(NSMutableArray *nums1,NSInteger m, NSMutableArray *nums2, NSInteger n) {
    NSInteger p1 = m - 1;
    NSInteger p2 = n - 1;
    NSInteger p = nums1.count - 1;
    while (p1 >=0 && p2 >=0) {
        if ([nums1[p1] integerValue]>= [nums2[p2] integerValue]) {
            nums1[p--] = nums1[p1--];
        } else {
            nums1[p--] = nums2[p2--];
        }
    }
    while (p1 >= 0) {
        nums1[p--] = nums1[p1--];
    }
    while (p2 >= 0) {
        nums1[p--] = nums2[p2--];
    }
    NSLog(@"num1==%@",nums1.description);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        mergeTwoArray(@[@1,@2,@3,@0,@0,@0].mutableCopy, 3, @[@2,@5,@6].mutableCopy, 3);
    }
    return 0;
}

