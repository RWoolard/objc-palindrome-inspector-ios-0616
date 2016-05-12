//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}
- (BOOL) stringIsPalindrome:(NSString *)string {
    
    
    NSArray *punctuation = @[@",", @".", @"?", @"!", @":", @";"];
    NSString *withoutPunc = [string copy];
    for (NSUInteger i = 0; i < [punctuation count]; i++) {
        NSString *punctuations = punctuation[i];
        withoutPunc = [withoutPunc stringByReplacingOccurrencesOfString:punctuations withString:@""];
    }
    NSString *spaceless = [withoutPunc stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
                                  
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];


    return stringIsEqualToReverse;
}

- (NSString *) stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }

    
    return result;
}
/**
 
 * Implement your methods here.
 
 */

@end
