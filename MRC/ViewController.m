//
//  ViewController.m
//  MRC
//
//  Created by dahuoshi on 04/12/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "student.h"

@interface ViewController ()

//@property (assign, nonatomic) Person *gg;

@property (retain, nonatomic) Person *gg;

@end

@implementation ViewController

NSString *pp = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *arr = [NSArray arrayWithObjects:@"123", nil];
    NSArray *arrb = @[@"123"];
    NSLog(@"arr addrss :%lu",(NSInteger)arr);
    NSLog(@"arrb addrss :%lu",(NSInteger)arrb);
    NSLog(@"arr addrss :%lu",(NSInteger)arr[0]);
    NSLog(@"arrb addrss :%lu",(NSInteger)arrb[0]);
    NSInteger k = 30;
    NSInteger l = k;
    NSLog(@"k addrss :%lu",(NSInteger)&k);
    NSLog(@"l addrss :%lu",(NSInteger)&l);
    Person *p = [[Person alloc] init];
    NSLog(@"p retain count :%lu",(unsigned long)[p retainCount]);
    NSLog(@"p addrss :%lu",(NSInteger)p);
    Person *g = [p retain];
    NSLog(@"g addrss :%lu",(NSInteger)g);
    Person *f = p;
    NSLog(@"f addrss :%lu",(NSInteger)f);
    NSLog(@"g retain count :%lu",(unsigned long)[g retainCount]);
    NSLog(@"p retain count :%lu",(unsigned long)[p retainCount]);
    NSLog(@"f retain count :%lu",(unsigned long)[f retainCount]);
    [p release];
    [p release];
//    @try {
//        //执行的代码，如果异常,就会抛出，程序不继续执行啦
//        [p release];
//    } @catch (NSException *exception) {
//        //捕获异常
//        NSLog(@"exception is :%@",exception);
//    } @finally {
//        //这里一定执行，无论你异常与否
//    }
    NSLog(@"p addrss :%lu",(NSInteger)p);
    NSLog(@"g addrss :%lu",(NSInteger)g);
    NSLog(@"f addrss :%lu",(NSInteger)f);
//    NSLog(@"g retain count :%lu",(unsigned long)[g retainCount]);
//    NSLog(@"p retain count :%lu",(unsigned long)[p retainCount]);
//    NSLog(@"f retain count :%lu",(unsigned long)[f retainCount]);
    
    self.gg = [self test];
    NSLog(@"gg addrss :%lu",(NSInteger)self.gg);
    NSLog(@"gg retain count :%lu",(unsigned long)[self.gg retainCount]);
    
//    NSMutableString *string = [NSMutableString stringWithFormat:@"leichunfeng"];//MRC中使用类方法生成的对象，系统会自己再后面加一个autorelease方法，保证自己生成的对象能被延迟释放，否则就没人去释放了。
    NSMutableString *string = [NSMutableString new];  //使用new，copy，mutublecopy，alloc方法生成的对象系统不会加autorelease方法的，所以这个对象的释放，用户必须自己管理。
    NSString *str    = @"sawyer";
    NSString *str1    = @"sawyer";

    NSString *str2   = [[NSString alloc]initWithString:@"sawyer"];

    NSString *str3   = [[NSString alloc]initWithString:str1];

    pp = string;
    NSLog(@"pp retaincount:%lu",(unsigned long)[string retainCount]);
   

    NSLog(@"%p,   %p ,   %p , %p ,   %p",string,str,str1,str2,str3);

//    NSLog(@"pp address:%@",string);
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    NSLog(@"pp address:%@",pp);
}
- (IBAction)buttonAction:(UIButton *)sender {
    NSLog(@"gg addrss :%lu",(NSInteger)self.gg);
    NSLog(@"gg retain count :%lu",(unsigned long)[self.gg retainCount]);
    NSLog(@"pp address:%@",pp);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    NSLog(@"pp address:%@",pp);
}

- (Person *)test {
   
//   Person *p = [Person new];
   Person *p = [[Person new] autorelease];//一般这个方法返回对象时，自己要加上autorelease方法，否责这个对象就没人释放了。函数体内大括号结束只是清掉的该调用栈的局部变量，这个函数的内的 p 就是局部变量，&p这个p本身的地址内存在出栈时会被清掉的。
   return p;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
