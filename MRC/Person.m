//
//  Person.m
//  MRC
//
//  Created by dahuoshi on 04/12/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (void)load {
    NSLog(@"person load...");
}

+ (void)initialize {
    NSLog(@"person initialize...");
}

- (void)dealloc {
    NSLog(@"person will be dealloc....");
    [super dealloc];
}

+ (NSString *)description {
    return @"sfdddddddddddddddddddddd";
}

@end
