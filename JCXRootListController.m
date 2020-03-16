#include "JCXRootListController.h"

@implementation JCXRootListController
- (instancetype)init {
    [JCXPackageInfo retrieveControl];
    return [super init];
}
- (NSArray *)specifiers {
    if (!_specifiers) _specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
    return _specifiers;
}
@end
