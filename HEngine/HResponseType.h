//
//  HResponseType.h
//  HEngine
//
//  Created by pongsil vachirajongkol on 7/9/55 BE.
//  Copyright (c) 2555 pongsil.v@gmail.com. All rights reserved.
//pyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef HResponseType_h
#define HResponseType_h

typedef void (^HStringResponseBlock)(NSString *responseString);
typedef void (^HArrayResponseBlock)(NSArray *responseArray);
typedef void (^HDictionaryResponseBlock)(NSDictionary *responseDictionary);

typedef void (^HImageIDResponseBlock)(NSString *imageID);

#endif
