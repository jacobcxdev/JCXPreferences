#import "JCXLinkCell.h"

@interface JCXTwitterCell : JCXLinkCell {
    NSString *_username;
}
+ (NSURL *)twitterURLForUsername:(NSString *)username;
@end
