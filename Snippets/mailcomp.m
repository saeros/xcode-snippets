// MFMailComposeViewController initialization & delegate
// Methods required to use the iOS Mail Composer
//
// Platform: iOS
// Language: Objective-C
// Completion Scope: Class Implementation

#import <MessageUI/MessageUI.h>

- (void)presentModalMailComposerViewController:(BOOL)animated {
    if (NSClassFromString(@"MFMailComposeViewController") && [MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *composeViewController = [MFMailComposeViewController new];
        composeViewController.mailComposeDelegate = self;
        
        [composeViewController setSubject:<#Subject#>];
        [composeViewController setMessageBody:<#Body#> isHTML:YES];
        [composeViewController setToRecipients:@[<#Recipients#>]];
        
        UIImage *myImage = [UIImage imageNamed:@"double-rainbow.png"];
        NSData *imageData = UIImagePNGRepresentation(myImage);
        [controller addAttachmentData:imageData mimeType:@"image/png" fileName:@"all-the-way"];
        
        [self presentViewController:composeViewController animated:animated completion:nil];
    }
    else {
        [[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", nil) message:NSLocalizedString(@"<#Cannot send mail message#>", nil) delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles:nil] show];
    }
}

#pragma mark - MFMailComposeViewController delegate
- (void)mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result
                        error:(NSError *)error {
    if (error) {
        NSLog(@"%s - Error: %@", __PRETTY_FUNCTION__, error);
    }
    
    switch (result) {
        case MFMailComposeResultCancelled: {
            NSLog(@"%s - Cancelled", __PRETTY_FUNCTION__);
        }
            break;
            
        case MFMailComposeResultFailed: {
            [[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", nil) message:NSLocalizedString(@"<#Could not send mail message#>", nil) delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles:nil] show];
        }
            break;
            
        case MFMailComposeResultSaved: {
            NSLog(@"%s - Mail saved in the drafts folder", __PRETTY_FUNCTION__);
        }
            break;
            
        case MFMailComposeResultSent:
        default:
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
