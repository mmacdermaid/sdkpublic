//
//  MMLoader.mm
//  MediaMathSDK
//
//  Created by Michael MacDermaid on 8/26/14.
//  Copyright (c) 2014 MediaMath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MediaMathSDK.h"

@interface MMLoader : NSObject
@end

static MMLoader * mmloader = nil;

class CPPLoader
{
public:
    
    void noWarnings(MMLoader * loader)
    {
        return;
    }
    
    CPPLoader()
    {
        mmloader = [[MMLoader alloc]init];
        
        this->noWarnings(mmloader);
    }
};

static CPPLoader cppLoader;


@implementation MMLoader


- (void)applicationFinishedLaunching:(NSNotification *)notification
{
    [MediaMathSDK initWithOptions:nil];
    
    NSLog(@"applicationFinishedLaunching");
}

-(id)init
{
    self = [super init];
    
    if(self)
    {
        
        if([NSNotificationCenter defaultCenter])
        {
        
            [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationFinishedLaunching:) name:UIApplicationDidFinishLaunchingNotification object:nil];
        }
    }
    
    return self;
}

@end