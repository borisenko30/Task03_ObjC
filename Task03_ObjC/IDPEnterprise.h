//
//  IDPEnterprise.h
//  Task03_ObjC
//
//  Created by Admin on 09.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IDPMoneyFlow.h"

@class IDPBuilding;
@class IDPCar;

@interface IDPEnterprise : NSObject
@property (nonatomic, retain) IDPBuilding *office;
@property (nonatomic, retain) IDPBuilding *carWash;
@property (nonatomic, retain) NSArray *carWashers;
@property (nonatomic, retain) NSArray *accountants;
@property (nonatomic, retain) NSArray *directors;

+ (IDPWorker *)freeWorkerWithArray:(NSArray *)workers;

- (void)startWorkingWithCar:(IDPCar *)car;

@end
