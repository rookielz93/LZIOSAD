//
//  LZADDefine.m
//  VideoDownloader
//
//  Created by lz on 2023/10/28.
//

#import "LZADDefine.h"

@implementation LZADDefine

+ (NSString *)adIden:(LZADType)type position:(LZADPosition)position {
    NSString *iden = nil;
    switch (type) {
        case LZADTypeAdmob:
        {
            switch (position) {
                case LZADPositionSearchUrl:
                    iden = @"ca-app-pub-7403313333938904/1037461523";
                    break;
                case LZADPositionSchedule:
                    iden = @"ca-app-pub-7403313333938904/1037461523";
                    break;
                case LZADPositionSearchUser:
                    iden = @"ca-app-pub-7403313333938904/1037461523";
                    break;
                case LZADPositionSearchResult:
                    iden = @"ca-app-pub-7403313333938904/1037461523";
                    break;
                case LZADPositionPerson:
                    iden = @"ca-app-pub-7403313333938904/1037461523";
                    break;
                case LZADPositionSetting:
                    iden = @"ca-app-pub-7403313333938904/1037461523";
                    break;
                case LZADPositionFavorite:
                    iden = @"ca-app-pub-7403313333938904/1037461523";
                    break;
                default:
                    break;
            }
        }
            break;
        default:
            break;
    }
    return iden;
}

@end
