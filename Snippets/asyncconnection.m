// Async connection
// Dispatch a url connection on background thread with completion handler
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

dispatch_async(dispatch_get_global_queue(<#dispatch_queue_priority_t priority#>, <#unsigned long flags#>), ^{
    NSURL *wsURL = <#url#>;
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:wsURL cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10.0f];
    [request setHTTPMethod:@"GET"];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue new] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        NSInteger statusCode = ((NSHTTPURLResponse *)response).statusCode;
        if ([data length] > 0 && error == nil) {
            // data downloaded
            // handle data (parsing)
        }
        else if ([data length] == 0 && error == nil) {
            // empty reply (no error, just no data)
            error = [NSError errorWithDomain:<#domain#>
                                        code:0
                                    userInfo:@{@"status": [NSString stringWithFormat:@"%ld", (long)statusCode], @"message": @"Data is empty"}];
        }
        
        if (error) {
            // error
            // handle error (e.g. failure(error);)
        }
   }];
});
