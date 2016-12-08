#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        double x = 2.55,
            result = 3 * (x * x * x) - 5 * (x * x) + 6;

        NSLog(@"The result is = %f", result);
    }

    return 0;
}