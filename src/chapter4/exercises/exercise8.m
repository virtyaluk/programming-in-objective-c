#import <Foundation/Foundation.h>

@interface Calculator: NSObject
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;

- (double) add: (double) value;
- (double) substract: (double) value;
- (double) multiply: (double) value;
- (double) divide: (double) value;
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

- (double) add: (double) value
{
    accumulator += value;

    return accumulator;
}

- (double) substract: (double) value
{
    accumulator -= value;

    return accumulator;
}

- (double) multiply: (double) value
{
    accumulator *= value;

    return accumulator;
}

- (double) divide: (double) value
{
    accumulator /= value;

    return accumulator;
}
@end

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        Calculator *myCalc = [Calculator new];

        [myCalc setAccumulator: 100.0];
        NSLog(@"accumulator set to %g", [myCalc accumulator]);
        NSLog(@"accumulator + 200.0 = %g", [myCalc add: 200.0]);
        NSLog(@"accumulator / 15.0 = %g", [myCalc divide: 15.0]);
        NSLog(@"accumulator - 10.0 = %g", [myCalc substract: 10.0]);
        NSLog(@"accumulator * 5.0 = %g", [myCalc multiply: 5.0]);
        NSLog(@"The result is %g", [myCalc accumulator]);
    }

    return 0;
}