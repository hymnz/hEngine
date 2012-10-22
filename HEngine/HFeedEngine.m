//
//  HFeedEngine.h
//  HFeedEngine
//
//  Created by pongsil vachirajongkol on 7/9/55 BE.
//  Copyright (c) 2555 pongsil.v@gmail.com. All rights reserved.
//

#import "HFeedEngine.h"


@implementation HFeedEngine
- (NSInteger)cacheMemoryCost 
{ 
    return 2; 
}

- (NSString*)cacheDirectoryName 
{
    return [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:@"feed"];
}

-(MKNetworkOperation*)requestPublicFeedOnCompletion:(HArrayResponseBlock)completionBlock
                                            onError:(MKNKErrorBlock)errorBlock
{
    
    MKNetworkOperation *op = [self operationWithPath:@"api/user/logout"
                                              params:NULL
                                          httpMethod:@"GET"];
    
    [op onCompletion:^(MKNetworkOperation *completedOperation) {
        // the completionBlock will be called twice. 
        // if you are interested only in new values, move that code within the else block
        id responseData = nil;
        
        if([completedOperation isCachedResponse]) {
            responseData = [completedOperation responseJSON];
        } else {
            responseData = [completedOperation responseJSON];
        }
        
        
        completionBlock(responseData);
        
    } onError:^(NSError* error) {
        errorBlock(error);
    }];
    
    [self enqueueOperation:op];
    
    return op;
}


@end
