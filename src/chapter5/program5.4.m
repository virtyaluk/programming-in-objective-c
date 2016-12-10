#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        int n, number, triangularNumber = 0;

        NSLog(@"What triangular number do you want?");
        scanf("%i", &number);

        for (n = 1; n <= number; ++n)
        {
            triangularNumber += n;
        }

        NSLog(@"Triangular number %i is %i\n", number, triangularNumber);
    }

    return 0;
}