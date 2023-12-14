//
//  LZAdmobADVIew.m
//  VideoDownloader
//
//  Created by lz on 2023/10/28.
//

#import "LZAdmobADVIew.h"
@import GoogleMobileAds;

@interface LZAdmobADVIew () <GADBannerViewDelegate>
@property (nonatomic, strong) GADBannerView *bannerView;
@end

@implementation LZAdmobADVIew

- (instancetype)initWithFrame:(CGRect)frame
                         type:(LZADType)type position:(LZADPosition)position
                     rootPage:(UIViewController *)rootPage
                     delegate:(nullable id<LZADViewDelegate>)delegate {
    if ([super initWithFrame:frame type:type position:position rootPage:rootPage delegate:delegate]) {
        self.bannerView.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:self.bannerView];
        [self addConstraints:@[[NSLayoutConstraint constraintWithItem:self.bannerView
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.safeAreaLayoutGuide
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1
                                                             constant:0],
                               [NSLayoutConstraint constraintWithItem:self.bannerView
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0]]];
    }
    return self;
}

- (BOOL)request {
    BOOL needRequest = [super request];
    if (needRequest) {
        [self.bannerView loadRequest:[GADRequest request]];
    }
    return needRequest;
}

// MARK: - GADBannerViewDelegate

- (void)bannerViewDidReceiveAd:(GADBannerView *)bannerView {
  NSLog(@"bannerViewDidReceiveAd");
}

- (void)bannerView:(GADBannerView *)bannerView didFailToReceiveAdWithError:(NSError *)error {
  NSLog(@"bannerView:didFailToReceiveAdWithError: %@", [error localizedDescription]);
}

- (void)bannerViewDidRecordImpression:(GADBannerView *)bannerView {
  NSLog(@"bannerViewDidRecordImpression");
}

- (void)bannerViewWillPresentScreen:(GADBannerView *)bannerView {
  NSLog(@"bannerViewWillPresentScreen");
}

- (void)bannerViewWillDismissScreen:(GADBannerView *)bannerView {
  NSLog(@"bannerViewWillDismissScreen");
}

- (void)bannerViewDidDismissScreen:(GADBannerView *)bannerView {
  NSLog(@"bannerViewDidDismissScreen");
}

// MARK: - Props

- (GADBannerView *)bannerView {
    if (!_bannerView) {
        _bannerView = [[GADBannerView alloc] initWithAdSize:GADAdSizeBanner];
        _bannerView.adUnitID = self.iden;
        _bannerView.rootViewController = self.rootPage;
        _bannerView.delegate = self;
    }
    return _bannerView;
}

@end
