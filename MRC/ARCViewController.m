//
//  ARCViewController.m
//  MRC
//
//  Created by dahuoshi on 27/12/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "ARCViewController.h"
#import "ARCPerson.h"
#import "Person.h"

@interface ARCViewController ()

@end

@implementation ARCViewController

__weak ARCPerson *weakPerson;
__weak Person *mrcPerson;
ARCPerson *strongPerson;

__weak NSString *weakStr;
__weak NSString *weakStr2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    strongPerson = [ARCPerson person];
    strongPerson.name = @"sawyer";
    strongPerson.sex  = @"male";
    NSLog(@"arcPerson is %p",strongPerson);
    NSLog(@"arcPerson.name is %@",strongPerson.name);
    
    
    mrcPerson = [Person person];
    mrcPerson.name = @"sawyer";
    mrcPerson.sex  = @"male";
    NSLog(@"mrcPerson is %p",mrcPerson);
    NSLog(@"mrcPerson.name is %@",mrcPerson.name);
    
    
    
    weakStr = [NSString stringWithFormat:@"str1"];//编译器自动优化不可变的字符串为常量字符串“str1”,它存储在数据区的常量区，arc这些内存的释放由系统释放，ARC不会管理的。
    weakStr2 = [NSMutableString stringWithFormat:@"str1"];//可以的字符串放在了堆区，堆区一般有程序员开辟和释放，ARC就是帮助程序员处理了堆区内存的释放问题。ARC是基于MRC管理的，所以MRC中系统类方法会自动添加autorelease方法在后面。另外，其实ARC就是在MRC的基础上再合适的地方添加了release和autorelease方法而已。
    
    NSLog(@"weakStr address is %p",weakStr);
    NSLog(@"weakStr2 address is %p",weakStr2);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"arcPerson is %p",strongPerson);
    NSLog(@"arcPerson.name is %@",strongPerson.name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}
- (IBAction)dismissAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)buttonAction:(UIButton *)sender {
    NSLog(@"arcPerson is %p",strongPerson);
    NSLog(@"arcPerson.name is %@",strongPerson.name);
    
    NSLog(@"mrcPerson is %p",mrcPerson);
    NSLog(@"mrcPerson.name is %@",mrcPerson.name);
    
    NSLog(@"weakStr address is %p",weakStr);
    NSLog(@"weakStr content is %@",weakStr);
    NSLog(@"weakStr2 address is %p",weakStr2);
    NSLog(@"weakStr2 content is %@",weakStr2);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
