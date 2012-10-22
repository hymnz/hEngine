//
//  HEngine.h
//  HEngine
//
//  Created by pongsil vachirajongkol on 7/9/55 BE.
//  Copyright (c) 2555 pongsil.v@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MKNetworkEngine.h"
#import "HResponseType.h"

@interface HEngine : NSObject

- (id)initWithHostName:(NSString*)hostName 
    customHeaderFields:(NSDictionary*)headers;

- (MKNetworkOperation *)requestPublicFeedOnCompletion:(HArrayResponseBlock)completionBlock
                                              onError:(MKNKErrorBlock)errorBlock;


@end
