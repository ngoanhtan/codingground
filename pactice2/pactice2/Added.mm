//
//  Added.m
//  practice2
//
//  Created by robe on 3/2/15.
//  Copyright (c) 2015 ngoanhtan. All rights reserved.
//

#import "Added.h"

@implementation Added
+ (NSNumber*) sumNumber:(NSNumber*) num1:(NSNumber*)num2{

    return  [NSNumber numberWithFloat:([num1 floatValue] + [num2 floatValue])];
}
- (id) retain {
    NSLog(@"retain object added");
}
- (id) release {
    NSLog(@"release object added");
}
@end
