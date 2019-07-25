//
//  RNPaycardsView.m
//  RNPaycardsSdk
//
//  Created by claudiu.iordache on 17/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNPaycardsView.h"
#import <React/RCTLog.h>
#import <PayCardsRecognizer/PayCardsRecognizer.h>

@interface RNPaycardsView() <PayCardsRecognizerPlatformDelegate>

@property(nonatomic, strong) PayCardsRecognizer *cardRecognizer;

@end

@implementation RNPaycardsView

#pragma mark - Lifecycle
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _frameColor = [UIColor greenColor];
        RNPaycardsTorchDescriptor descriptor;
        descriptor.isON = false;
        descriptor.value = 0.0;
        _torch = descriptor;
    }
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview {
    RCTLogInfo(@"[RN] willMoveToSuperview");
    if (newSuperview) {
        [self.cardRecognizer startCamera];
        [self.cardRecognizer turnTorchOn:self.torch.isON withValue:self.torch.value];
    } else {
        [self.cardRecognizer stopCamera];
    }
}

- (void)dealloc {
    [self.cardRecognizer stopCamera];
}

#pragma mark - Accessors

- (void)setFrameColor:(UIColor *)frameColor {
    RCTLogInfo(@"[RN] setFrameColor");
    _frameColor = frameColor;
}

- (void)setTorch:(RNPaycardsTorchDescriptor)torchDescriptor {
    RCTLogInfo(@"[RN] setTorch");
    _torch = torchDescriptor;
}

- (PayCardsRecognizer *)cardRecognizer {
    RCTLogInfo(@"[RN] cardRecognizer");
    if (!_cardRecognizer) {
        _cardRecognizer = [[PayCardsRecognizer alloc] initWithDelegate:self
                                                            resultMode:PayCardsRecognizerResultModeAsync
                                                             container:self
                                                            frameColor:_frameColor];
    }
    [_cardRecognizer turnTorchOn:true withValue:1.0f];
    return _cardRecognizer;
}

#pragma mark - PayCardsRecognizerPlatformDelegate
- (void)payCardsRecognizer:(PayCardsRecognizer * _Nonnull)payCardsRecognizer
              didRecognize:(PayCardsRecognizerResult * _Nonnull)result {
    RCTLogInfo(@"%@", result);
    if (self.onPaycardRecognized) {
        self.onPaycardRecognized([result dictionary]);
    }
}

@end
