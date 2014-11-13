//
//  MediaMathSDK.h
//  MediaMathSDK
//
//  Created by Michael MacDermaid on 8/6/14.
//  Copyright (c) 2014 MediaMath. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MediaMathSDK : NSObject

/** Manual call to intialize the MediaMathSDK.  This is called internally, and will be allowed to explicitly be called externally in furture versions, but for now you shouldn't need it
 
 @param options NSDictionary of options that enable you to customize the SDK in the future
 @return void
 */
+(void)initWithOptions:(NSDictionary *)options;


/** The web call that reports impression pixel calls to the MediaMath servers for attribution.
 
 @param pixelId The pixel ID of your MediaMath Pixel.
 @param advertiserId The Advetiser ID
 @param additionalParameters Any custom parameters that you need passed along with the SDK call
 @return void
 */
+(void)report:(NSString *)pixelId advertiserId:(NSString *)advertiserId additionalParameters:(NSString *)additionalParameters;


@end
