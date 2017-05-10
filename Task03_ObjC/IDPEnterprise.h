//
//  IDPEnterprise.h
//  Task03_ObjC
//
//  Created by Admin on 09.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IDPBuilding;

@interface IDPEnterprise : NSObject

+ (IDPBuilding *)generateOffice;
+ (IDPBuilding *)generateCarWash;
- (void)startWorking;

@end
