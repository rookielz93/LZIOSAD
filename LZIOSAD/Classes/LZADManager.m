//
//  LZADManager.m
//  VideoDownloader
//
//  Created by lz on 2023/10/28.
//

#import "LZADManager.h"
#import "LZADManager+Admob.h"

@implementation LZADManager

+ (void)launch:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [LZADManager admob_launch:application didFinishLaunchingWithOptions:launchOptions];
}

@end
