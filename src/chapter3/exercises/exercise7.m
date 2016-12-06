#include <Foundation/Foundation.h>

@interface MyPoint: NSObject
- (void) setX: (int) newX;
- (void) setY: (int) newY;
- (int) x;
- (int) y;
@end 

@implementation MyPoint
{
    int x;
    int y;
}

- (void) setX: (int) newX
{
    x = newX;
}

- (void) setY: (int) newY
{
    y = newY;
}

- (int) x
{
    return x;
}

- (int) y
{
    return y;
}
@end

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        MyPoint *myPoint = [MyPoint new];

        [myPoint setX: 20];
        [myPoint setY: 12];

        NSLog(@"Instance of a MyPoint class has next values: x - %i, y - %i", [myPoint x], [myPoint y]);
    }

    return 0;
}