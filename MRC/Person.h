//
//  Person.h
//  MRC
//
//  Created by dahuoshi on 04/12/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

+ (instancetype)person;

@property (retain, nonatomic) NSString *name;
@property (retain, nonatomic) NSString *sex;

@end
