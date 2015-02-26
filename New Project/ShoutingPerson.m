#import <Foundation/Foundation.h>

@implementation ShoutingPerson 
- (void) saySomething : NSString* str{
    NSLog(@"%@",[str uppercaseString]);
}
@end