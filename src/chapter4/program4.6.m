#import <Foundation/Foundation.h>

@interface Calculator: NSObject
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;

- (void) add: (double) value;
- (void) substract: (double) value;
- (void) multiply: (double) value;
- (void) divide: (double) value;
@end

@implementation Calculator
{
    double accumulator;
}

- (void) setAccumulator: (double) value
{
    accumulator = value;
}

- (void) clear
{
    accumulator = 0;
}

- (double) accumulator
{
    return accumulator;
}

- (void) add: (double) value
{
    accumulator += value;
}

- (void) substract: (double) value
{
    accumulator -= value;
}

- (void) multiply: (double) value
{
    accumulator *= value;
}

- (void) divide: (double) value
{
    accumulator /= value;
}
@end

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        Calculator *myCalc = [Calculator new];

        [myCalc setAccumulator: 100.0];
        [myCalc add: 200];
        [myCalc divide: 15.0];
        [myCalc substract: 10.0];
        [myCalc multiply: 5];
        NSLog(@"The result is %g", [myCalc accumulator]);
    }

    return 0;
}