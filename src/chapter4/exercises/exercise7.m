#include <Foundation/Foundation.h>

@interface Rectangle: NSObject
- (void) setWidth: (int) w;
- (void) setHeight: (int) h;
- (int) width;
- (int) height;
- (int) area;
- (int) perimeter;
@end

@implementation Rectangle
{
    int width;
    int height;
}

- (void) setWidth: (int) w
{
    width = w;
}

- (void) setHeight: (int) h
{
    height = h;
}

- (int) width
{
    return width;
}

- (int) height
{
    return height;
}

- (int) area
{
    return width * height;
}

- (int) perimeter
{
    return 2 * width + 2 * height;
}
@end

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        Rectangle *myRect = [Rectangle new];

        [myRect setWidth: 40];
        [myRect setHeight: 80];

        NSLog(@"Rectangle with width of %i and height of %i has area of %i, and perimeter of %i", [myRect width], [myRect height], [myRect area], [myRect perimeter]);
    }

    return 0;
}