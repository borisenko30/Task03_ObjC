//
//  IDPMoneyProtocol.h
//  Task03_ObjC
//
//  Created by Student003 on 5/8/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IDPWorker;

@protocol IDPMoneyProtocol <NSObject>

- (void)giveMoney:(NSUInteger)money toWorker:(IDPWorker *)worker;

@optional
- (void)takeMoney:(NSUInteger)money fromWorker:(IDPWorker *)worker;

@end
