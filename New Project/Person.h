#import <Foundation/Foundation.h>
#import "Person.m"
@interface Person : NSObject {
NSString* lastName;
NSString* firstName;
NSDate* dateOfBirth;
}
- (void) sayHello;   
- (void) saySomething:(NSString*)a;

@end