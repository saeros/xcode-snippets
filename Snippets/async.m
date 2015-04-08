// Async
// Dispatch a block on background thread with completion block on main thread
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

dispatch_async(dispatch_get_global_queue(<#dispatch_queue_priority_t priority#>, <#unsigned long flags#>), ^(void) 
    <#code#>
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        <#code#>
    });
});
