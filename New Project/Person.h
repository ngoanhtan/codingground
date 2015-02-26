
@interface Person : NSObject {
NSString* lastName;
NSString* firstName;
NSDate* dateOfBirth;
}

- (void) sayHello;   
- (void) saySomething:(NSString*)a;
+ (id) person;
@end