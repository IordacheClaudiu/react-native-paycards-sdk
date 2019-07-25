//
//  RNPaycardsView.h
//  RNPaycardsSdk
//
//  Created by claudiu.iordache on 17/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTComponent.h>

typedef struct {
    BOOL isON;
    float value;
} RNPaycardsTorchDescriptor;

NS_ASSUME_NONNULL_BEGIN

@interface RNPaycardsView : UIView

@property (nonatomic, copy) RCTBubblingEventBlock onPaycardRecognized;
@property (nonatomic, strong) UIColor *frameColor;
@property (nonatomic) RNPaycardsTorchDescriptor torch;

@end

NS_ASSUME_NONNULL_END
