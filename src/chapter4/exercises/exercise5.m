#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        double res = (3.31 * pow(10, -8) + 2.01 * pow(10, -7)) / (7.16 * pow(10, -6) + 2.01 * pow(10, -8));

        NSLog(@"The result is = %f", res);
    }

    return 0;
}