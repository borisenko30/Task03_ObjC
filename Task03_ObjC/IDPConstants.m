//
//  IDPConstants.m
//  Task03_ObjC
//
//  Created by Student003 on 5/8/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPConstants.h"

#define constantInit(type, name, value) type const name = value;

constantInit(NSUInteger, IDPCarWashCost, 100)
constantInit(NSUInteger, IDPMaxArrayLength, 10)

NSRange const IDPCashRange = {100, 200};
