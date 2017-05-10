//
//  Worker.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPWorker.h"

@interface IDPWorker ()
@property (nonatomic, assign) NSUInteger cash;

@end

@implementation IDPWorker

- (instancetype)init {
    self = [super init];
    if (self) {
        self.state = IDPFree;
    }
    
    return self;
}

- (NSUInteger)giveMoney {
    NSUInteger money = self.cash;
    self.cash = 0;
    
    return money;
}

- (void)takeMoney:(NSUInteger)money {
    self.cash += money;
}

+ (IDPWorker *)freeWorkerFromArray:(NSArray *)workers {
    IDPWorker *worker;
    for (worker in workers) {
        if (worker.state == IDPFree) {
            return worker;
        }
    }
    
    return nil;
}

@end
