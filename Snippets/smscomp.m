// MFMessageComposeViewController initialization & delegate
// Methods required to use the iOS SMS Message Composer
//
// Platform: iOS
// Language: Objective-C
// Completion Scope: Class Implementation

#import <MessageUI/MessageUI.h>

- (void)presentModalSMSMMessageComposerViewController:(BOOL)animated {
    if (NSClassFromString(@"MFMessageComposeViewController") && [MFMessageComposeViewController canSendText]) {
        MFMessageComposeViewController *composeViewController = [MFMessageComposeViewController new];
        composeViewController.messageComposeDelegate = self;
        
        [composeViewController setBody:<#Body#>];
        [composeViewController setRecipients:@[<#Recipients#>]];
        
        [self presentViewController:composeViewController animated:animated completion:nil];
    }
    else {
        [[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", nil) message:NSLocalizedString(@"<#Cannot send sms message#>", nil) delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles:nil] show];
    }
}


#pragma mark - MFMessageComposeViewController delegate
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    switch (result) {
        case MessageComposeResultCancelled: {
            NSLog(@"%s - Cancelled", __PRETTY_FUNCTION__);
        }
            break;
            
        case MessageComposeResultFailed: {
            [[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", nil) message:NSLocalizedString(@"<#Could not send sms message#>", nil) delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles:nil] show];
        }
            break;
            
        case MessageComposeResultSent:
        default:
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
