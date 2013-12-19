// Rotation support
// Placeholders for all of the rotation support methods
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Class implementation

#pragma mark - Rotation support
////////////////////////////////////////////////////////////////////////////////

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return (([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
            ? UIInterfaceOrientationMaskPortrait
            : UIInterfaceOrientationMaskAll);
}

// iOS 4 support
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
	    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    
	return YES;
}
