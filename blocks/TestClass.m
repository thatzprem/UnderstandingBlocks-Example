//
//  TestClass.m
//  blocks
//
//  Created by Prem kumar on 06/02/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

#import "TestClass.h"

@implementation TestClass

-(void)prepare:(NSString *)urlString CallBack:(prepareBlock)blockName{
    
    blockName(urlString);
}

@end
