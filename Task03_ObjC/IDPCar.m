//
//  Car.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPCar.h"
#import "IDPConstants.h"
#import "IDPRandom.h"
#import "IDPWorker.h"

@implementation IDPCar

- (instancetype)init {
    self = [super init];
    if (self) {
        self.state = IDPDirty;
        self.cash = IDPRandomWithRange(IDPCashRange);
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
