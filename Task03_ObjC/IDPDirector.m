//
//  Boss.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPDirector.h"

@implementation IDPDirector

- (void)makeProfit {
    NSUInteger beforeTaxes = self.cash;
    NSUInteger afterTaxes = beforeTaxes / 2;
    self.profits = afterTaxes;
    self.cash = beforeTaxes;
    NSLog(@"Boss has got some profit: %lu", afterTaxes);
}

@end
