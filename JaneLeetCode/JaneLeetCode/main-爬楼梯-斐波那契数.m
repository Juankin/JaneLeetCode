//
//  main.m
//  JaneLeetCode
//
//  Created by yuqin on 2020/7/13.
//  Copyright © 2020 JJS. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 70. 爬楼梯（斐波那契数）
 假设你正在爬楼梯。需要 n 阶你才能到达楼顶。
 每次你可以爬 1 或 2 个台阶。你有多少种不同的方法可以爬到楼顶呢？
 注意：给定 n 是一个正整数。
 示例 1：输入： 2 输出： 2   解释： 有两种方法可以爬到楼顶。
 1.  1 阶 + 1 阶
 2.  2 阶
 示例 2：  输入： 3   输出： 3   解释： 有三种方法可以爬到楼顶。
 1.  1 阶 + 1 阶 + 1 阶
 2.  1 阶 + 2 阶
 3.  2 阶 + 1 阶
 */

//解法一
int fib0(int n) {
    if (n <= 1) {
        return n;
    }
    
    return fib0(n - 1) + fib0(n - 2);
}


//解法二
int fib1(int n) {
    if (n <= 1) {
        return n;
    }
    int first = 0;
    int second = 1;
    for (int i = 0; i < n - 1; i++) {
        int sum = first + second;
        first = second;
        second = sum;
    }
    return second;
}

//解法三
int fib2(int n) {
    if (n <= 1) {
        return n;
    }
    int first = 0;
    int second = 1;
    while (n-- > 1) {
        second += first;
        first = second - first;
    }
    return second;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 12;
        nslo
        NSLog(@"firstCount===%d,lastCount ===%d",fib(n),fib2(n));
    }
    return 0;
}

