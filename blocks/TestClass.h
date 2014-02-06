//
//  TestClass.h
//  blocks
//
//  Created by Prem kumar on 06/02/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

typedef void(^prepareBlock)(NSString *);

#import <Foundation/Foundation.h>

@interface TestClass : NSObject

-(void)prepare:(NSString*)urlString CallBack:(prepareBlock)blockName;

@end
