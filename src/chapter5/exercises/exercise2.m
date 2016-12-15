#import <Foundation/Foundation.h>

int main (int argc, const char* argv[])
{
    @autoreleasepool {
        int n = 1, triangularNumber = 0;

        for (; n <= 50; n++)
        {
            triangularNumber = n * (n + 1) / 2;

            if (n % 5 == 0)
            {
                NSLog(@"%ith triangular number is %i", n, triangularNumber);
            }
        }

        NSLog(@"Resulting triangular number is - %i", triangularNumber);
    }

    return 0;
}