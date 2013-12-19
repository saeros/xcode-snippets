// Singleton
// Pattern implementation
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Class Implementation


#pragma mark - Singleton
////////////////////////////////////////////////////////////////////////////////

+ (<#class#> *)sharedInstance
{
    static dispatch_once_t pred;
    static <#class#> *sharedInstance = nil;
	dispatch_once(&pred, ^{
        
		sharedInstance = [[<#class#> alloc] init];
        
	});
	
	return sharedInstance;
}
