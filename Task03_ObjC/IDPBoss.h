//
//  Boss.h
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPWorker.h"

@interface IDPBoss : IDPWorker
@property (nonatomic, assign) NSUInteger profits;

- (void)makeProfit;

@end
