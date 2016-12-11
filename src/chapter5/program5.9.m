#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        int number, rightDigit;

        NSLog(@"Enter your number");
        scanf("%i", &number);

        do {
            rightDigit = number % 10;

            NSLog(@"%i", rightDigit);

            number /= 10;
        } while (number != 0);
    }

    return 0;
}