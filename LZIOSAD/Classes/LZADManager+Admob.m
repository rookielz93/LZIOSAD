//
//  LZADManager+Admob.m
//  VideoDownloader
//
//  Created by lz on 2023/10/28.
//

#import "LZADManager+Admob.h"
@import GoogleMobileAds;

@implementation LZADManager (Admob)

+ (void)admob_launch:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [GADMobileAds.sharedInstance startWithCompletionHandler:nil];
}

@end
