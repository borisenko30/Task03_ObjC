//
//  CarWasher.h
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPWorker.h"

@class IDPAccountant;
@class IDPCar;

@interface IDPCarWasher : IDPWorker

- (void)washTheCar:(IDPCar *)car;
- (void)handOverAllCashToAccountant:(IDPAccountant *)accountant;

@end
