//
//  RNPaycardsManager.m
//  RNPaycardsSdk
//
//  Created by claudiu.iordache on 17/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNPaycardsViewManager.h"
#import "RNPaycardsView.h"

@implementation RNPaycardsViewManager

RCT_EXPORT_MODULE()

- (UIView *)view {
    return [RNPaycardsView new];
}

@end
