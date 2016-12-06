#include <Foundation/Foundation.h>

@interface Computer: NSObject
- (void) turnOn;
- (void) work;
- (void) playGame: (int) hours;
- (void) watchMovie: (int) hours;
- (void) turnOff;
@end

@implementation Computer
- (void) turnOn
{
    NSLog(@"Turn on the computer");
}

- (void) work
{
    NSLog(@"Work on computer");
}

- (void) playGame: (int) hours
{
    NSLog(@"Play game for %i hours", hours);
}

- (void) watchMovie: (int) hours
{
    NSLog(@"Watch movie for %i hours", hours);
}

- (void) turnOff
{
    NSLog(@"Turn off the computer");
}
@end

int main (int argc, const char *argv[])
{
    @autoreleasepool {
        Computer *myComp = [Computer new];

        [myComp turnOn];
        [myComp work];
        [myComp playGame: 2];
        [myComp watchMovie: 2];
        [myComp turnOff];
    }

    return 0;
}