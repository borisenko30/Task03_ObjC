//
//  Worker.h
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDPMoneyProtocol.h"

typedef NS_ENUM(NSUInteger, IDPWorkerState) {
    IDPFree,
    IDPBusy
};

@interface IDPWorker : NSObject <IDPMoneyProtocol>
@property (nonatomic, assign) NSUInteger        salary;
@property (nonatomic, assign) NSUInteger        experience;
@property (nonatomic, assign) NSUInteger        cash;
@property (nonatomic, assign) IDPWorkerState    state;

@end
