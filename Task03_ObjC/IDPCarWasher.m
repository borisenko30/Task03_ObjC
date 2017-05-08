//
//  CarWasher.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPCarWasher.h"
#import "IDPCar.h"
#import "IDPAccountant.h"
#import "IDPConstants.h"

@implementation IDPCarWasher

- (void)washTheCar:(IDPCar *)car {
    NSLog(@"Car is clean: %@", car);
    [car setState:IDPClean];
    [car giveMoney:kIDPCarWashCost toWorker:self];
    NSLog(@"Service cost is: %lu", kIDPCarWashCost);
}

- (void)handOverAllCashToAccountant:(IDPAccountant *)accountant {
    [self giveMoney:self.cash toWorker:accountant];
}

@end
