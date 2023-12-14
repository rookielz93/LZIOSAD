//
//  LZADDefine.h
//  VideoDownloader
//
//  Created by lz on 2023/10/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : int {
    LZADTypeAdmob,
} LZADType;

typedef enum : int {
    LZADPositionSearchUrl,
    LZADPositionSchedule,
    LZADPositionSearchUser,
    LZADPositionSearchResult,
    LZADPositionPerson,
    LZADPositionSetting,
    LZADPositionFavorite
} LZADPosition;

@interface LZADDefine : NSObject

+ (NSString *)adIden:(LZADType)type position:(LZADPosition)position;

@end

NS_ASSUME_NONNULL_END
