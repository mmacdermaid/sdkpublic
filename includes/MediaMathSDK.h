//
//  MediaMathSDK.h
//  MediaMathSDK
//
//  Created by Michael MacDermaid on 8/6/14.
//  Copyright (c) 2014 MediaMath. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MediaMathSDK : NSObject

+(void)initWithOptions:(NSDictionary *)options;

+(void)report:(NSString *)pixelId advertiserId:(NSString *)advertiserId additionalParameters:(NSString *)additionalParameters;


@end
