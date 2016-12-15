#include <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        int n, triangularNumber = 0;

        NSLog (@"TABLE OF TRIANGULAR NUMBERS");
        NSLog (@" n Sum from 1 to n");
        NSLog (@"-- ---------------");

        for (n = 1; n <= 10; n++)
        {
            triangularNumber += n;
            NSLog (@"%-2i %i", n, triangularNumber);
        }
    }

    return 0;
}