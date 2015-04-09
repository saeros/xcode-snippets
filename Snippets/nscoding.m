// NSCoding
// Protocol implementation
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Class implementation

#pragma mark - NSCoding
- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:self.<#variable#> forKey:@"<#variable#>"];
    [encoder encodeBool:self.<#variable#> forKey:@"<#variable#>"];
    [encoder encodeInteger:self.<#variable#> forKey:@"<#variable#>"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super init];
    if (nil != self) {
        self.<#variable#> = [decoder decodeObjectForKey:@"<#variable#>"];
        self.<#variable#> = [decoder decodeBoolForKey:@"<#variable#>"];
        self.<#variable#> = [decoder decodeIntegerForKey:@"<#variable#>"];
    }
    
    return self;
}
