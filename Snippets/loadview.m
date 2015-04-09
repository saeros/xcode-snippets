// Lorem view
// Load a view from a xib
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Class implementation

+ (<#class#> *)loadView {
    NSArray *nibViews = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil];
    for (NSObject *obj in nibViews) {
        if ([obj isKindOfClass:[self class]]) {
            return ((<#class#> *)obj);
        }
    }
    
    return nil;
}
