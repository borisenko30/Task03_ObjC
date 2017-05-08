//
//  NSMutableArray+IDPExtensions.m
//  Task03_ObjC
//
//  Created by Admin on 07.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import "NSMutableArray+IDPExtensions.h"

@implementation NSMutableArray (IDPExtensions)

- (void)addIDPObject:(id)object{
    if (object) {
        [self addObject:object];
    }
}

- (void)removeIDPObjectAtIndex:(NSUInteger)index{
    NSMutableArray *objects = self;
    if ([objects count] > index) {
        [objects removeObjectAtIndex:index];
    }
}

- (void)removeLastIDPObject{
        [self removeLastObject];
}

@end
