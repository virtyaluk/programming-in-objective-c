#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        int f = 27,
            c = (f - 32) / 1.8;

        NSLog(@"The result of converting 27 degrees Faranheit (F) to degrees Celcius (C) is = %i", c);
    }

    return 0;
}