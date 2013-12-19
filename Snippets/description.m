// Description
// Override NSObject description method to customize your objects output
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Class implementation

#pragma mark - Description
////////////////////////////////////////////////////////////////////////////////

- (NSString *)description 
{
	NSMutableString *toReturn = [[NSMutableString alloc] initWithString:@""];
	NSString *superDescription = [super description];
	if (nil != superDescription) 
		[toReturn appendString:[NSString stringWithFormat:@"%@ { ", superDescription]];
	[toReturn appendFormat:@"%@ {%@}, ", @"<#variable#>", self.<#variable#>];
	[toReturn appendFormat:@"%@ {%ld}, ", @"<#variable#>", (long)self.<#variable#>];
    [toReturn appendFormat:@"%@ {%@}", @"<#variable#>", self.<#variable#>];
    [toReturn appendString:@" }"];
	
	return toReturn;
}
