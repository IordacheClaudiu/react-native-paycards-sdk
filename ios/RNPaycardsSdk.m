
#import "RNPaycardsSdk.h"
#import "RNPaycardsView.h"

@implementation RNPaycardsSdk

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

-(UIView *)view {
    return [RNPaycardsView new];
}

@end
  
