//
//  ActivityManager.h
//  FactoryMethod-iOS
//
//  Created by niezhiqiang on 2022/2/10.
//

#import <Foundation/Foundation.h>

// 运营位
typedef NS_OPTIONS(NSUInteger, ActivityType) {
    ActivityTypeNone         = 0,      // 无运营位
    ActivityTypeFloating     = 1 << 1, // 浮窗运营位
    ActivityTypeTop          = 1 << 2, // 顶部运营位
    ActivityTypeBottom       = 1 << 3, // 底部运营位
    ActivityTypeMiddle       = 1 << 4, // 中部运营位
};

NS_ASSUME_NONNULL_BEGIN

@interface ActivityManager : NSObject

+ (instancetype)showWithActivity:(ActivityType)type;
- (void)dismissWithActivity:(ActivityType)type;

@end

NS_ASSUME_NONNULL_END
