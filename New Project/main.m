#import <Foundation/Foundation.h>
#import "Person.h"
#import "ShoutingPerson.h"
#define sum(x, y, z) x + y + z


int main (int argc, const char * argv[])
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

   NSLog (@"hello world");
   NSLog(@"sum(%d, %d, %d) * %d = %d", 1, 2, 3, 4, sum(1, 2, 3) * 4);
   Person *p = [[Person alloc] init];
   ShoutingPerson *sp = [[ShoutingPerson alloc] init];
   //[p sayHello];
   //[p saySomething:@"clgt"];
   //NSLog (@"sum is %d",sumNumber(1,2));
   [pool drain];
   return 0;
}
