//
//  Accountant.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPAccountant.h"
#import "IDPBoss.h"

@implementation IDPAccountant

- (void)countMoneyforBoss:(IDPBoss *)boss{
    NSUInteger money = self.cash;
    NSLog(@"Counted money: %lu", money);
    [self giveMoney:money toWorker:boss];
}

@end
