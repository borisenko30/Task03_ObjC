//
//  Building.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPBuilding.h"
#import "IDPRoom.h"

#import "NSMutableArray+IDPExtensions.h"
#import "NSArray+IDPExtensions.h"

@interface IDPBuilding ()
@property (nonatomic, retain) NSMutableArray *mutableRooms;

@end

@implementation IDPBuilding

@dynamic rooms;

- (void)dealloc {
    self.mutableRooms = nil;
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.mutableRooms = [NSMutableArray array];
    }
    
    return self;
}

- (NSArray *)rooms {
    return [[self.mutableRooms copy]autorelease];
}

- (void)addRoom:(IDPRoom *)room {
    [self.mutableRooms safeAddObject:room];
}

- (void)removeRoom:(IDPRoom *)room {
    [self.mutableRooms safeRemoveObject:room];
}

- (NSArray *)carWashers {
    NSArray *result = [self.mutableRooms arrayFromSubArraysWithSelector:@selector(carWashers)];
    
    return result;
}

- (NSArray *)accountants {
    NSArray *result = [self.mutableRooms arrayFromSubArraysWithSelector:@selector(accountants)];
    
    return result;
}

- (NSArray *)directors {
    NSArray *result = [self.mutableRooms arrayFromSubArraysWithSelector:@selector(directors)];
    
    return result;
}

@end
