//
//  LZADView.m
//  VideoDownloader
//
//  Created by lz on 2023/10/28.
//

#import "LZADView.h"

@implementation LZADView

- (instancetype)initWithFrame:(CGRect)frame
                         type:(LZADType)type position:(LZADPosition)position
                     rootPage:(UIViewController *)rootPage
                     delegate:(nullable id<LZADViewDelegate>)delegate {
    if (self = [super initWithFrame:frame]) {
        _type = type;
        _position = position;
        _iden = [LZADDefine adIden:type position:position];
        _rootPage = rootPage;
        _delegate = delegate;
    }
    return self;
}

- (BOOL)request {
    return YES;
}

@end

#import "LZAdmobADVIew.h"
@implementation LZADView (Factory)

+ (LZADView *)getADViewWithFrame:(CGRect)frame
                            type:(LZADType)type position:(LZADPosition)position
                        rootPage:(UIViewController *)rootPage
                        delegate:(id<LZADViewDelegate>)delegate {
    LZADView *ret = nil;
    switch (type) {
        case LZADTypeAdmob:
        {
            ret = [[LZAdmobADVIew alloc] initWithFrame:frame type:type position:position rootPage:rootPage delegate:delegate];
        }
            break;
        default:
            break;
    }
    return ret;
}

@end
