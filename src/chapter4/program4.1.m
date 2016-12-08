#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
	@autoreleasepool {
		int intVar = 100;
		float floatVar = 331.79;
		double doubleVar = 8.44e+11;
		char charVar = 'W';

		NSLog(@"integer var = %i", intVar);
		NSLog(@"floating var = %f", floatVar);
		NSLog(@"double var = %e", doubleVar);
		NSLog(@"double var = %g", doubleVar);
		NSLog(@"char var = %c", charVar);
	}

	return 0;
}
