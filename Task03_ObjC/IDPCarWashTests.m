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
#import "IDPBoss.h"
#import "IDPCar.h"
#import "NSObject+IDPFactoryObject.h"

void IDPCarWashTest() {
    IDPBuilding *office = [IDPBuilding object];
    IDPBuilding *carWash = [IDPBuilding object];
    IDPRoom *room = [IDPRoom object];
    IDPCarRoom *carRoom = [IDPCarRoom object];
    IDPCarWasher *carWasher = [IDPCarWasher object];
    IDPAccountant *accountant = [IDPAccountant object];
    IDPBoss *boss = [IDPBoss object];
    IDPCar *car = [IDPCar object];
    
    [office addRoom:room];
    [carWash addRoom:carRoom];
    [carRoom addWorker:carWasher];
    [room addWorker:accountant];
    [room addWorker:boss];
    
    [carWasher washTheCar:car];
    [carWasher handOverAllCashToAccountant:accountant];
    [accountant countMoneyforBoss:boss];
    [boss makeProfit];
}
