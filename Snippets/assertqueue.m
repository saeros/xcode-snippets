// Assert queue
// Init a dispatch queue
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Class implementation

static dispatch_queue_t <#name#>queue = nil;
- (dispatch_queue_t)assertQueue
{
    if (nil == <#name#>queue)
        <#name#>queue = dispatch_queue_create(<#domain#>, NULL/*DISPATCH_QUEUE_CONCURRENT*/);// NULL = serial | CONCURRENT = parallel

    return <#name#>queue;
}