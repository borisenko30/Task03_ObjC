//
//  IDPRoom.h
//  Task03_ObjC
//
//  Created by Admin on 07.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDPBuilding.h"

@class IDPWorker;

@interface IDPRoom : IDPBuilding
@property (nonatomic, readonly, copy) NSArray *personal;

- (NSArray *)personal;
- (void)addWorker:(IDPWorker *)worker;
- (void)removeWorkerAtIndex:(NSUInteger)index;
- (void)removeLastWorker;

@end
