//
//  ARCPerson.m
//  MRC
//
//  Created by dahuoshi on 27/12/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "ARCPerson.h"

@implementation ARCPerson

+ (instancetype)person {
    
    ARCPerson *person = [[ARCPerson alloc]init];
    //编译器自动加了autorelease方法，写法见MRC中的person
    return person;
}

@end
