//
//  Accountant.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPAccountant.h"

@implementation IDPAccountant

- (void)countMoney {
    NSLog(@"Counted money: %lu", self.cash);
}

- (void)makeJob {
    [self countMoney];
}

@end
