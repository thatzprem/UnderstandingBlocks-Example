//
//  ViewController.m
//  blocks
//
//  Created by Prem kumar on 06/02/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

#import "ViewController.h"
#import "TestClass.h"

typedef int (^MyGoodIntBlock) (int num, NSString *myString);

typedef NSString* (^MyGoodStringBlock) (int num, NSString *myString);

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    void(^myFirstBlock)(void) = ^{
        
        NSLog(@"My first block");
        
    };
    
    myFirstBlock();
    
    int (^mySecondBlock)(int) = ^(int number){
       
        return number*number;
    };
    
    
    NSLog(@"%d",mySecondBlock(2));
    
    int (^myThirdBlock)(int, NSString *) = ^(int num, NSString *string){
        
        return num;
    };
    
    NSLog(@"%d",myThirdBlock(10,@"Something"));
    
    NSString* (^myFourthBlock)(int, NSString *) = ^(int num, NSString *string){
        
        string = [string stringByAppendingString:[NSString stringWithFormat:@"%d",num]];
        return string;
    };
    
    NSLog(@"%@",myFourthBlock(3,@"Something"));
    
    
    MyGoodIntBlock myGoodIntBlock = ^(int num, NSString *string){
        
        return num;
    };
    
    NSLog(@"%d",myGoodIntBlock(10,@"myGoodBlock"));
    

    MyGoodStringBlock myGoodStringBlock = ^(int number,NSString *myString){
      
        myString = [myString stringByAppendingString:[NSString stringWithFormat:@"%d",number]];
        
        return myString;
    };
    
    NSLog(@"%@",myGoodStringBlock(10,@"myGoodStringBlock"));
    
    
    TestClass *testClass = [[TestClass alloc] init];
    [testClass prepare:@"www.test.com" CallBack:^(NSString * response){
        NSLog(@"%@",response);
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
