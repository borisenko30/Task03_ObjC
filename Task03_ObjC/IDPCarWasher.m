//
//  CarWasher.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPCarWasher.h"
#import "IDPCar.h"

@implementation IDPCarWasher

- (void)washCar {
    NSLog(@"Car is clean!");
}

- (void)makeJob {
    [self washCar];
}

@end
