//
//  LZADManager+Admob.h
//  VideoDownloader
//
//  Created by lz on 2023/10/28.
//

#import "LZADManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface LZADManager (Admob)

+ (void)admob_launch:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
