#import <Foundation/Foundation.h>

@interface Calculator: NSObject
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;

- (void) add: (double) value;
- (void) substract: (double) value;
- (void) multiply: (double) value;
- (void) divide: (double) value;
- (double) memoryClear;
- (double) memoryStore;
- (double) memoryRecall;
- (double) memoryAdd: (double) value;
- (double) memorySubstract: (double) value;
@end

@implementation Calculator
{
    double accumulator;
    double memory;
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

- (double) memoryClear
{
    memory = 0;

    return accumulator;
}

- (double) memoryStore
{
    memory = accumulator;

    return accumulator;
}

- (double) memoryRecall
{
    accumulator = memory;

    return accumulator;
}

- (double) memoryAdd: (double) value
{
    memory += value;

    return accumulator;
}

- (double) memorySubstract: (double) value
{
    memory -= value;

    return accumulator;
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
        [myCalc memoryClear];
        [myCalc memoryStore];
        NSLog(@"memory add 20.0 = %g", [myCalc memoryAdd: 20.0]);
        NSLog(@"memory substract 3.0 = %g", [myCalc memorySubstract: 3.0]);
        [myCalc memoryRecall];
        NSLog(@"The result is %g", [myCalc accumulator]);
    }

    return 0;
}