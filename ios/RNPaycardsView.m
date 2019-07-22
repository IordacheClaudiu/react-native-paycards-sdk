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
    }
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview {
    if (newSuperview) {
        [self.cardRecognizer startCamera];
    } else {
        [self.cardRecognizer stopCamera];
    }
}

- (void)dealloc {
    [self.cardRecognizer stopCamera];
}

#pragma mark - Accessors

- (void)setFrameColor:(UIColor *)frameColor {
    _frameColor = frameColor;
    self.cardRecognizer = nil;
    [self.cardRecognizer startCamera];
}

- (PayCardsRecognizer *)cardRecognizer {
    if (!_cardRecognizer) {
        _cardRecognizer = [[PayCardsRecognizer alloc] initWithDelegate:self
                                                            resultMode:PayCardsRecognizerResultModeAsync
                                                             container:self
                                                            frameColor:self.frameColor];
    }
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
