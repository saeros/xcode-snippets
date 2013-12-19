// Twitter SLComposeViewController initialization & delegate
// Methods required to use the iOS native Twitter Message Composer
//
// Platform: iOS
// Language: Objective-C
// Completion Scope: Class Implementation

#import <Social/Social.h>

- (void)presentModalFacebookComposerViewController:(BOOL)animated
{
	if (NSClassFromString(@"SLComposeViewController") && [SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
	{
		SLComposeViewController *composeViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
		[composeViewController setInitialText:<#Body#>];
		[composeViewController addImage:[UIImage imageNamed:@"double-rainbow.png"]];
		[composeViewController addImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@""]]]];
		[composeViewController addURL:[NSURL URLWithString:<#url#>]];
		[composeViewController setCompletionHandler:^(SLComposeViewControllerResult result) {
 
			switch (result)
			{
				case SLComposeViewControllerResultCancelled:
					NSLog(@"%s - Canceled", __PRETTY_FUNCTION__);
					break;

				case SLComposeViewControllerResultDone:
				default:
					break;
			}
 
		}];
 
		[self presentViewController:composeViewController animated:animated completion:nil];
	}
	else
	{
		[[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", nil) message:NSLocalizedString(@"<#Could not Tweet message#>", nil) delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles:nil] show];
	}
}
