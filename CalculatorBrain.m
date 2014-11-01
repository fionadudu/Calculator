//
//  CalculatorBrain.m
//  Calculator
//
//  Created by babykang on 14-10-20.
//  Copyright (c) 2014年 Fiona. All rights reserved.
//

#import "CalculatorBrain.h"
@interface CalculatorBrain()
@property (nonatomic, strong)NSMutableArray *operandStack;
@end

@implementation CalculatorBrain

@synthesize operandStack = _operandStack;

-(NSMutableArray *)operandStack
{
    if(_operandStack == nil) _operandStack = [[NSMutableArray alloc] init];
    return _operandStack;
}


-(void)pushOperand:(double)operand
{
  [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}
-(double)popOperand
{
    NSMumber *operandObject = [self.operandStack lastObject];
    if (operandObject) [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

-(void)performOperation:(NSString *) operation
{
    double result = 0;
    //calcultor result
    
    if ([operation isEqualToString:@"+"]){
        result = [self popOperand] + [self popOperand];
    } else if ([@"*"isEqualToString:operation]) {
        result = [self popOperand] * [self popOperand];
    }
    
    [self pushOperand:result];
    return result;
}


@end
