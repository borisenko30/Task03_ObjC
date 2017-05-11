//
//  Boss.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPDirector.h"

@interface IDPDirector ()
@property (nonatomic, assign) NSUInteger cash;
@property (nonatomic, assign) NSUInteger profits;

@end

@implementation IDPDirector

- (void)makeProfit {
    self.profits += self.cash;
    self.cash = 0;
    NSLog(@"Boss has got some profit: %lu", self.profits);
}

- (void)makeJob {
    [self makeProfit];
}

@end
