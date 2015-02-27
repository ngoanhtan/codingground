#import <Foundation/Foundation.h>
#import "Person.h"
#import "ShoutingPerson.h"
#import "NSString+mdNSString.h"

#define sum(x, y, z) x + y + z


int main (int argc, const char * argv[])
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

   NSLog (@"hello world");
   NSLog(@"sum(%d, %d, %d) * %d = %d", 1, 2, 3, 4, sum(1, 2, 3) * 4);
   Person *p = [Person person];
   Person* pointToMe ;
   if(!pointToMe)
        pointToMe = [Person person];
   ShoutingPerson *sp = [[ShoutingPerson alloc] init];
   ShoutingPerson *sp2 = [ShoutingPerson person];
   NSString* str = @"how are you today";
   NSLog(@"%@",[str encodeString]);
   //[p sayHello];
   //[p saySomething:@"clgt"];
   //NSLog (@"sum is %d",sumNumber(1,2));
   [pool drain];
   return 0;
}
