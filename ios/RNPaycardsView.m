//
//  RNPaycardsView.m
//  RNPaycardsSdk
//
//  Created by claudiu.iordache on 16/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNPaycardsView.h"

@interface RNPaycardsView()

@property(nonatomic, strong) UIButton *testButton;

@end

@implementation RNPaycardsView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:_testButton];
    }
    return self;
}

- (UIButton *)testButton {
    if (!_testButton) {
        _testButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_testButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_testButton setTitle:@"Test Button" forState:UIControlStateNormal];
        _testButton.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }
    return _testButton;
}

@end
