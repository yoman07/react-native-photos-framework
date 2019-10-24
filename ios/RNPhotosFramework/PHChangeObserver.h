#import <Foundation/Foundation.h>
#import "PHCachedFetchResult.h"
#import "PHCachedFetchResult.h"

@import Photos;
@interface PHChangeObserver : NSObject<PHPhotoLibraryChangeObserver>
- (instancetype)initWithEventEmitter:(RCTEventEmitter *)eventEmitter;
- (void)removeChangeObserver;

@property (weak, nonatomic) RCTEventEmitter * eventEmitter;
@end
