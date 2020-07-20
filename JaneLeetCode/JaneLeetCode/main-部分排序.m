//
//  main.m
//  JaneLeetCode
//
//  Created by yuqin on 2020/7/13.
//  Copyright © 2020 JJS. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 面试题 16.16. 部分排序
 给定一个整数数组，编写一个函数，找出索引m和n，只要将索引区间[m,n]的元素排好序，
 整个数组就是有序的。
 注意：n-m尽量最小，也就是说，找出符合条件的最短序列。
 函数返回值为[m,n]，若不存在这样的m和n（例如整个数组是有序的），请返回[-1,-1]。
 示例：
 输入： [1,2,4,7,10,11,7,12,6,7,16,18,19]
 输出： [3,9]
 提示：
 0 <= len(array) <= 1000000
 */
NSArray* subSort(NSArray *array) {
    if (!array || array.count == 0) {
        return @[@-1, @-1];
    }
    // 用来记录最右的那个逆序对位置
    NSInteger right = -1;
    // 从左扫描到右寻找逆序对（正序：逐渐变大）
    NSInteger max = [array[0] integerValue];
    for (NSInteger i = 1; i < array.count - 1; i++) {
        if ([array[i] integerValue] >= max) {
            max = [array[i] integerValue];
        } else {
            right = i;
        }
    }
    // 提前结束
    if (right == -1) {
        return @[@-1, @-1];
    }
    // 用来记录最左的那个逆序对位置
    NSInteger left = - 1;
    // 从右扫描到左寻找逆序对（正序：逐渐变小）
    NSInteger min = [array[array.count - 1] integerValue];
    for (NSInteger i = array.count - 2; i >= 0; i--) {
        if ([array[i] integerValue] <= min) {
            min = [array[i] integerValue];
        } else {
            left = i;
        }
    }
    return @[@(left), @(right)];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *subIndex =  subSort(@[@1,@2,@4,@7,@10,@11,@7,@12,@6,@7,@16,@18,@19]);
        NSLog(@"subIndex==%@",subIndex.description);
    }
    return 0;
}


