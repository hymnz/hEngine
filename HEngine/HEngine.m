//
//  HEngine.m
//  HEngine
//
//  Created by pongsil vachirajongkol on 7/9/55 BE.
//  Copyright (c) 2555 pongsil.v@gmail.com. All rights reserved.
//

#import "HEngine.h"
#import "HFeedEngine.h"


@interface HEngine()

@property (strong, nonatomic) HFeedEngine *feedEngine;
@end

@implementation HEngine
@synthesize feedEngine = _feedEngine;

- (id)initWithHostName:(NSString*)hostName 
    customHeaderFields:(NSDictionary*)headers 
{
    self = [super init];
    if (self) {
        _feedEngine = [[HFeedEngine alloc] initWithHostName:hostName customHeaderFields:headers];
    }
    
    return self;
}

#pragma mark - Private

- (MKNetworkOperation *)requestPublicFeedOnCompletion:(HArrayResponseBlock)completionBlock
                                              onError:(MKNKErrorBlock)errorBlock
{
    return [self.feedEngine requestPublicFeedOnCompletion:(HArrayResponseBlock)completionBlock
                                                  onError:^(NSError *error) {
                                                      errorBlock(error);
                                                  }];
}


@end
