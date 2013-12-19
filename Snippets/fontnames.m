// Font names
// print all the available fonts
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

// Get all the fonts available (system + custom)
NSArray *familyNames = [[UIFont familyNames] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
for (NSString *familyName in familyNames)
{
    NSLog(@"Family: %@", familyName);
    NSArray *fontNames = [[UIFont fontNamesForFamilyName:familyName] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    for (NSString *fontName in fontNames)
    {
        NSLog(@"\tFont: %@", fontName);
    }
}