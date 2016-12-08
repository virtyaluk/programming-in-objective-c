#import <Foundation/Foundation.h>

@interface Fraction: NSObject
- (void) setReal: (double) a;
- (void) setImaginary: (double) b;
- (void) print;
- (double) real;
- (double) imaginary;
@end

@implementation Fraction
{
    double real, imaginary;
}

- (void) setReal: (double) a
{
    real = a;
}

- (void) setImaginary: (double) b
{
    imaginary = b;
}

- (void) print
{
    NSLog(@"%f + %fi", real, imaginary);
}

- (double) real
{
    return real;
}

- (double) imaginary
{
    return imaginary;
}
@end

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        Fraction *myFraction = [Fraction new];

        [myFraction setReal: 5];
        [myFraction setImaginary: 3];

        NSLog(@"Complex number representation is next:");
        [myFraction print];
    }

    return 0;
}