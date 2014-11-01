//
//  CalculatorBrain.h
//  Calculator
//
//  Created by babykang on 14-10-20.
//  Copyright (c) 2014年 Fiona. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

-(void)pushOperand:(double)operand;
-(void)performOperation:(NSString *) operation;

@end
