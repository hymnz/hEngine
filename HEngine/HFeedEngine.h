//
//  HFeedEngine.h
//  HFeedEngine
//
//  Created by pongsil vachirajongkol on 7/9/55 BE.
//  Copyright (c) 2555 pongsil.v@gmail.com. All rights reserved.
//

#import "HResponseType.h"
#import "MKNetworkEngine.h"

@interface HFeedEngine : MKNetworkEngine
- (MKNetworkOperation *)requestPublicFeedOnCompletion:(HArrayResponseBlock)completionBlock
                                              onError:(MKNKErrorBlock)errorBlock;

@end
