
#import "NSString+mdNSString.h"

@implementation NSString (mdNSString)

- (NSString*) encodeString{
    //return [NSString stringWithFormat:@"Encode: %@", self];
    int i = 0;
    NSString* lowCase = self.lowercaseString;
    NSString* upCase = self.uppercaseString;
    NSString* tmp=@"";

    BOOL useUpperCase = true;
    BOOL canSwitch = true;
    for (; i < [self length];i++)
    {
        if ([self characterAtIndex:i] == 32 && canSwitch)
        {
            useUpperCase = !useUpperCase;
            canSwitch = false;
            tmp = [NSString stringWithFormat:@"%@%c", tmp, [self characterAtIndex:i]];
            continue;
        }
        canSwitch = true;
        if(useUpperCase)
        {
            tmp = [NSString stringWithFormat:@"%@%c", tmp, [upCase characterAtIndex:i]];
        }
        else
        {
            tmp = [NSString stringWithFormat:@"%@%c", tmp, [lowCase characterAtIndex:i]];
        }
        
    }
    
    return tmp;
}

@end