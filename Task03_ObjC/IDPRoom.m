//
//  IDPRoom.m
//  Task03_ObjC
//
//  Created by Admin on 07.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import "IDPRoom.h"
#import "IDPWorker.h"
#import "IDPCarWasher.h"
#import "IDPAccountant.h"
#import "IDPDirector.h"

#import "NSMutableArray+IDPExtensions.h"

@interface IDPRoom ()
@property (nonatomic, retain) NSMutableArray *mutableWorkers;

@end

@implementation IDPRoom

@dynamic workers;

- (void)dealloc {
    self.mutableWorkers = nil;
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.mutableWorkers = [NSMutableArray array];
    }
    
    return self;
}

- (NSArray *)workers {
    return [[self.mutableWorkers copy]autorelease];
}

- (void)addWorker:(IDPWorker *)worker {
    [self.mutableWorkers safeAddObject:worker];
}

- (void)removeWorker:(IDPWorker *)worker {
    [self.mutableWorkers removeObject:worker];
}

- (NSArray *)carWashers {
    return [self.mutableWorkers objectsOfClass:[IDPCarWasher class]];
}

- (NSArray *)accountants {
    return [self.mutableWorkers objectsOfClass:[IDPAccountant class]];
}

- (NSArray *)directors {
    return [self.mutableWorkers objectsOfClass:[IDPDirector class]];
}

@end
