//
//  IDPRoom.m
//  Task03_ObjC
//
//  Created by Admin on 07.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import "IDPRoom.h"

@interface IDPRoom ()
@property (nonatomic, retain) NSMutableArray *mutablePersonal;

@end

@implementation IDPRoom
@dynamic personal;

- (void)dealloc {
    self.mutablePersonal = nil;
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.mutablePersonal = [NSMutableArray array];
    }
    
    return self;
}

- (NSArray *)personal {
    return [[self.mutablePersonal copy]autorelease];
}

- (void)addWorker:(IDPWorker *)worker {
    [self.mutablePersonal addIDPObject:worker];
}

- (void)removeWorkerAtIndex:(NSUInteger) index{
    [self.mutablePersonal removeIDPObjectAtIndex:index];
}

-(void)removeLastWorker {
    [self.mutablePersonal removeLastIDPObject];
}

@end
