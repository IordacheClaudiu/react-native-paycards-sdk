//
//  RNPaycardsManager.m
//  RNPaycardsSdk
//
//  Created by claudiu.iordache on 17/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNPaycardsViewManager.h"
#import "RNPaycardsView.h"
#import <UIKit/UIKit.h>
#import <UIColor+Hex.h>

@interface RNPaycardsViewManager()

@property (nonatomic, strong) RNPaycardsView *paycardsView;

@end

@implementation RNPaycardsViewManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(onPaycardRecognized, RCTBubblingEventBlock)
RCT_CUSTOM_VIEW_PROPERTY(frameColor, NSString *, RNPaycardsView)
{
    RCTLogInfo(@"FrameColor: %@", json);
    [self.paycardsView setFrameColor:[UIColor colorWithCSS:(NSString *)json]];
}
RCT_CUSTOM_VIEW_PROPERTY(torch, id, RNPaycardsView)
{
    RCTLogInfo(@"TorchDescriptor: %@", json);
    RNPaycardsTorchDescriptor torchDescriptor;
    torchDescriptor.isON = (BOOL)json[@"isOn"];
    torchDescriptor.value = [(NSNumber *)json[@"value"] floatValue];
    [self.paycardsView setTorch:torchDescriptor];
}

- (UIView *)view {
    return self.paycardsView;
}

- (RNPaycardsView *)paycardsView {
    if (!_paycardsView) {
        _paycardsView = [RNPaycardsView new];
    }
    return _paycardsView;
}

@end
