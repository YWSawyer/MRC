//
//  ARCPerson.h
//  MRC
//
//  Created by dahuoshi on 27/12/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ARCPerson : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *sex;

+ (instancetype)person;

@end
