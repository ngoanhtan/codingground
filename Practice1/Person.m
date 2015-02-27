#import <Foundation/Foundation.h>
#import "Person.h"


@implementation Person 

- (id) init {
    self  = [super init ];
    [ self sayHello];
    return self;
}
  
- (void) sayHello{
    NSLog(@"say Hello");
    [ self saySomething:@"Im a Person"];
    [ self saySomething:@"OMG I was there !"];
}
- (void) saySomething : (NSString*) str{
    NSLog(@"One person say : %@",str);
}
+ (id) person {
    return [[self alloc] init];
}

@end