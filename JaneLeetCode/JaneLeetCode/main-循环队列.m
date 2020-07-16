//
//  main.m
//  JaneLeetCode
//
//  Created by yuqin on 2020/7/13.
//  Copyright © 2020 JJS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CircleQueue : NSObject

@property (nonatomic, strong) NSMutableArray *elements;
@property (nonatomic, assign) NSInteger front;
@property (nonatomic, assign) NSInteger rear;
@property (nonatomic, assign) NSInteger capbility;

- (instancetype)initWithCapbility:(NSUInteger)capbility;
+ (instancetype)queueWithCapbility:(NSUInteger)capbility;
- (BOOL)isEmpty;
- (BOOL)isFull;
- (void)enQueue:(id)element;
- (id)deQueue;
- (NSInteger)queueCount;

@end

@implementation CircleQueue

- (instancetype)initWithCapbility:(NSUInteger)capbility {
    CircleQueue *queue = [[CircleQueue alloc] init];
    queue.capbility = capbility;
    queue.front = queue.rear = 0;
    queue.elements = [NSMutableArray array];
    return queue;
}

+ (instancetype)queueWithCapbility:(NSUInteger)capbility {
    return [[CircleQueue alloc] initWithCapbility:capbility];
}

- (BOOL)isEmpty {
    return self.front == self.rear;
}

- (BOOL)isFull {
    return self.front == (self.rear + 1) % self.capbility;
}

- (void)enQueue:(id)element {
    if ([self isFull]) return;
    self.elements[self.rear] = element;
    self.rear = (self.rear + 1) % self.capbility;
}

- (id)deQueue {
    if ([self isEmpty]) return nil;
    id element = self.elements[self.front];
    self.front = (self.front + 1) % self.capbility;
    return element;
}

- (NSInteger)queueCount {
    return (self.rear - self.front + self.capbility) % self.capbility;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CircleQueue *queue1 = [CircleQueue queueWithCapbility:5];
        [queue1 enQueue:@(10)];
        [queue1 enQueue:@(30)];
        [queue1 enQueue:@(50)];
        [queue1 enQueue:@(80)];
        [queue1 enQueue:@(100)];
       
        NSUInteger firstCount = [queue1 queueCount];
        CircleQueue *queue2 = [queue1 deQueue];
        CircleQueue *queue3 = [queue1 deQueue];
        CircleQueue *queue4 = [queue1 deQueue];
        CircleQueue *queue5 = [queue1 deQueue];
        CircleQueue *queue6 = [queue1 deQueue];
        
        NSUInteger lastCount = [queue1 queueCount];
        NSLog(@"firstCount===%d,lastCount ===%d",firstCount,lastCount);
    }
    return 0;
}

