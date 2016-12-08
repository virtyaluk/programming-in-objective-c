#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        int a = 100,
            b = 2,
            c = 25,
            d = 4,
            result;

        result = a - b;
        NSLog(@"a - b = %i", result);

        result = b * c;
        NSLog(@"b * c = %i", result);

        result = a / c;
        NSLog(@"a / c = %i", result);

        result = a + b * c;
        NSLog(@"a + b * c = %i", result);

        NSLog(@"a * b + c * d = %i", a * b + c * d);
    }

    return 0;
}