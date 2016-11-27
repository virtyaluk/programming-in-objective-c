#include <Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
  @autoreleasepool {
    int val1, val2, sum;

    val1 = 80;
    val2 = 34;
    sum = val1 + val2;

    NSLog(@"The sum of %i and %i is %i", val1, val2, sum);
  }

  return 0;
}
