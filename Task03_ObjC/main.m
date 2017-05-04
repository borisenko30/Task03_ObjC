//
//  main.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        for (int i = 0; i < 10; i++) {
            NSLog(@"%i", arc4random_uniform(10));
        }
        
    }
    return 0;
}
