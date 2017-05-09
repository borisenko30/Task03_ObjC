//
//  Worker.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPWorker.h"

@implementation IDPWorker

- (instancetype)init {
    self = [super init];
    if (self) {
        self.state = IDPFree;
    }
    
    return self;
}

- (void)giveMoney:(NSUInteger)money toWorker:(IDPWorker *)worker {
    NSUInteger cashAmount = self.cash;
    if (cashAmount >= money) {
        cashAmount -= money;
        worker.cash += money;
    } else {
        NSLog(@"No money - no honey!");
    }
}

@end
