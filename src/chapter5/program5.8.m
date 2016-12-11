#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        int number, rightDigit;

        scanf("%i", &number);

        while (number != 0)
        {
            rightDigit = number % 10;

            NSLog(@"%i", rightDigit);

            number /= 10;
        }
    }

    return 0;
}