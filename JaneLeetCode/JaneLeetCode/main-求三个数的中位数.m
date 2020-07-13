//
//  main.m
//  JaneLeetCode
//
//  Created by yuqin on 2020/7/13.
//  Copyright © 2020 JJS. All rights reserved.
//

#import <Foundation/Foundation.h>

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

