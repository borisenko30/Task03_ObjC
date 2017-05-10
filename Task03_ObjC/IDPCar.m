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

@interface IDPCar ()
@property (nonatomic, assign) NSUInteger cash;

@end

@implementation IDPCar

- (instancetype)init {
    self = [super init];
    if (self) {
        self.state = IDPDirty;
        self.cash = IDPRandomWithRange(IDPCashRange);
    }
    
    return self;
}

- (NSUInteger)giveMoney {
    NSUInteger money = self.cash;
    self.cash = 0;
    
    return money;
}

@end
