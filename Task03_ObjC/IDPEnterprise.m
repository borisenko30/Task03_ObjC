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

#import "IDPConstants.h"

#import "NSObject+IDPExtensions.h"

@implementation IDPEnterprise

+ (IDPBuilding *)generateOffice {
    IDPBuilding *office = [IDPBuilding object];
    IDPRoom *room = [IDPRoom object];
    IDPAccountant *accountant = [IDPAccountant object];
    IDPDirector *director = [IDPDirector object];
    
    [office addRoom:room];
    [room addWorker:accountant];
    [room addWorker:director];
    
    return office;
}

+ (IDPBuilding *)generateCarWash {
    IDPBuilding *carWash = [IDPBuilding object];
    IDPCarRoom *carRoom = [IDPCarRoom object];
    IDPCarWasher *carWasher = [IDPCarWasher object];
    
    [carWash addRoom:carRoom];
    [carRoom addWorker:carWasher];
    
    return carWash;
}

- (void)startWorking {
    IDPBuilding *office = [IDPEnterprise generateOffice];
    IDPBuilding *carWash = [IDPEnterprise generateCarWash];
    
    NSArray *cars = [IDPCar objectsWithCount:IDPMaxArrayLength];
    NSArray *carWashers = [carWash carWashers];
    NSArray *accountants = [office accountants];
    NSArray *directors = [office directors];
    
    for (IDPCar *car in cars) {
        IDPCarWasher *carWasher = (IDPCarWasher *)[IDPCarWasher freeWorkerFromArray:carWashers];
        if (carWasher) {
            [carWasher washCar:car];
            [carWasher takeMoney:[car giveMoney]];
        }
        IDPAccountant *accountant = (IDPAccountant *)[IDPAccountant freeWorkerFromArray:accountants];
        if (accountants) {
            [accountant takeMoney:[carWasher giveMoney]];
            [accountant countMoney];
        }
        IDPDirector *director = (IDPDirector *)[IDPDirector freeWorkerFromArray:directors];
        if (director) {
            [director takeMoney:[accountant giveMoney]];
            [director makeProfit];
        }
        NSLog(@"----------");
    }
}

@end
