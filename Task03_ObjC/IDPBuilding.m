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
    [self.mutableRooms removeObject:room];
}

- (NSArray *)carWashers {
    return [self.mutableRooms arrayFromSubArraysWithBlock:^(id object) {
        return [object carWashers];
    }];
}

- (NSArray *)accountants {
    return [self.mutableRooms arrayFromSubArraysWithBlock:^(id object) {
        return [object accountants];
    }];
}

- (NSArray *)directors {
    return [self.mutableRooms arrayFromSubArraysWithBlock:^(id object) {
        return [object directors];
    }];
}

@end
