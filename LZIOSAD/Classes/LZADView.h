//
//  LZADView.h
//  VideoDownloader
//
//  Created by lz on 2023/10/28.
//

#import <UIKit/UIKit.h>
#import "LZADDefine.h"

NS_ASSUME_NONNULL_BEGIN

@protocol LZADViewDelegate <NSObject>

@end

@interface LZADView : UIView

@property (nonatomic, readonly, copy) NSString *iden;
@property (nonatomic, readonly, assign) LZADType type;
@property (nonatomic, readonly, assign) LZADPosition position;
@property (nonatomic, readonly, strong) UIViewController *rootPage;

@property (nonatomic, weak) id<LZADViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame
                         type:(LZADType)type position:(LZADPosition)position
                     rootPage:(UIViewController *)rootPage
                     delegate:(nullable id<LZADViewDelegate>)delegate;

- (BOOL)request;

@end

@interface LZADView (Factory)

+ (LZADView *)getADViewWithFrame:(CGRect)frame
                            type:(LZADType)type position:(LZADPosition)position
                        rootPage:(UIViewController *)rootPage
                        delegate:(nullable id<LZADViewDelegate>)delegate;

@end

NS_ASSUME_NONNULL_END
