//
//  IDPCarWashTests.m
//  Task03_ObjC
//
//  Created by Admin on 07.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import "IDPCarWashTests.h"
#import "IDPBuilding.h"
#import "IDPRoom.h"
#import "IDPCarRoom.h"
#import "IDPCarWasher.h"
#import "IDPAccountant.h"
#import "IDPDirector.h"
#import "IDPCar.h"

#import "NSObject+IDPExtensions.h"

void IDPCarWashTest() {
    IDPBuilding *office = [IDPBuilding object];
    IDPBuilding *carWash = [IDPBuilding object];
    IDPRoom *room = [IDPRoom object];
        IDPRoom *room2 = [IDPRoom object];
    IDPCarRoom *carRoom = [IDPCarRoom object];
    IDPCarWasher *carWasher = [IDPCarWasher object];
    IDPCarWasher *carWasher2 = [IDPCarWasher object];
    IDPCarWasher *carWasher3 = [IDPCarWasher object];
    IDPAccountant *accountant = [IDPAccountant object];
    IDPDirector *director = [IDPDirector object];
    //IDPCar *car = [IDPCar object];
    
    [office addRoom:room];
        [office addRoom:room2];
    [carWash addRoom:carRoom];
    [room2 addWorker:carWasher];
    [room2 addWorker:carWasher2];
    [room addWorker:carWasher3];
    [room addWorker:accountant];
    [room addWorker:director];
    NSArray *arr = [NSArray array];
    arr = [office directors];
//    [carWasher washTheCar:car];
//    [carWasher handOverAllCashToAccountant:accountant];
//    [accountant countMoneyforBoss:director];
//    [director makeProfit];
}
