#import <Foundation/Foundation.h>

int main (int argc, const char* argv[])
{
    @autoreleasepool {
        int factorial = 1, i;

        for (i = 1; i <= 10; i++)
        {
            factorial *= i;

            NSLog(@"%i! = %i", i, factorial);
        }
    }

    return 0;
}