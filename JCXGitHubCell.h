#import "JCXLinkCell.h"

@interface JCXGitHubCell : JCXLinkCell {
    NSString *_remote;
}
+ (NSURL *)gitHubURLForRemote:(NSString *)remote;
@end
