//
//  Car.h
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDPMoneyProtocol.h"

typedef NS_ENUM(NSUInteger, IDPCarState) {
        IDPClean,
        IDPDirty
};

@interface IDPCar : NSObject <IDPMoneyProtocol>
@property (nonatomic, assign) IDPCarState   state;
@property (nonatomic, assign) NSUInteger cash;

@end
