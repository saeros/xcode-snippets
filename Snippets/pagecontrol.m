// Page control paging
// Placeholders for UIPageControl paging methods
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Class implementation

#pragma mark - UIPageControl delegate

static BOOL pageControlIsChangingPage = NO;

// user tapped on the dots: change the scroll view position
- (IBAction)changePage:(UIPageControl *)sender {
	CGRect frame = <#scrollview#>.frame;
	frame.origin.x = frame.size.width * sender.currentPage;
	frame.origin.y = 0;
	[<#scrollview#> scrollRectToVisible:frame animated:YES];
	
	// when the animated scrolling finishes, scrollViewDidEndDecelerating will turn this off
    	pageControlIsChangingPage = YES;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
	if (pageControlIsChangingPage) {
		return;
	}
	
	// we switch pages at 50% across
	CGFloat pageWidth = scrollView.frame.size.width;
	NSUInteger page = floorf((scrollView.contentOffset.x - pageWidth / 2.0f) / pageWidth) + 1;
	
	<#pagecontrol#>.currentPage = page;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
	pageControlIsChangingPage = NO;
}
