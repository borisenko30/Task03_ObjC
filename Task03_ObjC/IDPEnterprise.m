//
//  IDPEnterprise.m
//  Task03_ObjC
//
//  Created by Admin on 09.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import "IDPEnterprise.h"
#import "IDPBuilding.h"
#import "IDPRoom.h"
#import "IDPCarRoom.h"

#import "IDPCarWasher.h"
#import "IDPAccountant.h"
#import "IDPDirector.h"
#import "IDPCar.h"

#import "NSObject+IDPExtensions.h"

@implementation IDPEnterprise

+ (IDPWorker *)freeWorkerWithArray:(NSArray *)workers {
    IDPWorker *worker;
    for (worker in workers) {
        if (worker.state == IDPWorkerFree) {
            return worker;
        }
    }
    
    return worker;
}

- (void)dealloc {
    self.office = nil;
    self.carWash = nil;
    self.carWashers = nil;
    self.accountants = nil;
    self.directors = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.office = [IDPBuilding object];
        [self.office addRoom:[IDPRoom object]];
        [self.office.rooms[0] addWorker:[IDPAccountant object]];
        [self.office.rooms[0] addWorker:[IDPDirector object]];
        
        self.carWash = [IDPBuilding object];
        [self.carWash addRoom:[IDPCarRoom object]];
        [self.carWash.rooms[0] addWorker:[IDPCarWasher object]];
        
        self.carWashers = [self.carWash carWashers];
        self.accountants = [self.office accountants];
        self.directors = [self.office directors];
    }
    
    return self;
}

- (void)startWorkingWithCar:(IDPCar *)car {
    IDPCarWasher *carWasher = (IDPCarWasher *)[IDPEnterprise freeWorkerWithArray:self.carWashers];
    if (carWasher) {
        [carWasher processObject:car];
    }
    IDPAccountant *accountant = (IDPAccountant *)[IDPEnterprise freeWorkerWithArray:self.accountants];
    if (accountant) {
        [accountant processObject:carWasher];
    }
    IDPDirector *director = (IDPDirector *)[IDPEnterprise freeWorkerWithArray:self.directors];
    if (director) {
        [director processObject:accountant];
    }
    NSLog(@"-----------------------");
}

@end
