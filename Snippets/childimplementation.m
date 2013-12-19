// Child implementation
// Throw a warning if not called from a child
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or method

@throw
	[NSException exceptionWithName:NSInvalidArgumentException
							reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
						  userInfo:nil];