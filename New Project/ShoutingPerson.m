#import <Foundation/Foundation.h>
#import "ShoutingPerson.h"
@implementation ShoutingPerson 
- (void) saySomething : (NSString*) str{
    NSLog(@"One Person shouting :  %@",[str uppercaseString]);
}
@end