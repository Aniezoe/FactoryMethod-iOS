//
//  ActivityManager.m
//  FactoryMethod-iOS
//
//  Created by niezhiqiang on 2022/2/10.
//

#import "ActivityManager.h"
#import "FloatingActivity.h"
#import "TopActivity.h"
#import "BottomActivity.h"
#import "MiddleActivity.h"

@interface ActivityManager ()

@property (nonatomic, strong) NSMutableDictionary *activityDic;

@end

@implementation ActivityManager

+ (instancetype)showWithActivity:(ActivityType)type {
    ActivityManager *manager = ActivityManager.new;
    if (type == ActivityTypeNone) {
        return manager;
    }
    if (type & ActivityTypeFloating) {
        ActivityFactory *factory = [[FloatingActivity alloc] init];
        [factory show];
        [manager.activityDic setObject:factory forKey:NSStringFromClass(FloatingActivity.class)];
    }
    if (type & ActivityTypeTop) {
        ActivityFactory *factory = [[TopActivity alloc] init];
        [factory show];
        [manager.activityDic setObject:factory forKey:NSStringFromClass(TopActivity.class)];
    }
    if (type & ActivityTypeBottom) {
        ActivityFactory *factory = [[BottomActivity alloc] init];
        [factory show];
        [manager.activityDic setObject:factory forKey:NSStringFromClass(BottomActivity.class)];
    }
    if (type & ActivityTypeMiddle) {
        ActivityFactory *factory = [[MiddleActivity alloc] init];
        [factory show];
        [manager.activityDic setObject:factory forKey:NSStringFromClass(MiddleActivity.class)];
    }
    return manager;
}

- (void)dismissWithActivity:(ActivityType)type {
    if (type == ActivityTypeNone) {
        return;
    }
    ActivityFactory *factory = nil;
    if (type & ActivityTypeFloating) {
        factory = [self.activityDic objectForKey:NSStringFromClass(FloatingActivity.class)];
        if (factory) {
            [factory dismiss];
            [self.activityDic removeObjectForKey:NSStringFromClass(FloatingActivity.class)];
        }
    }
    if (type & ActivityTypeTop) {
        factory = [self.activityDic objectForKey:NSStringFromClass(TopActivity.class)];
        if (factory) {
            [factory dismiss];
            [self.activityDic removeObjectForKey:NSStringFromClass(TopActivity.class)];
        }
    }
    if (type & ActivityTypeBottom) {
        factory = [self.activityDic objectForKey:NSStringFromClass(BottomActivity.class)];
        if (factory) {
            [factory dismiss];
            [self.activityDic removeObjectForKey:NSStringFromClass(BottomActivity.class)];
        }
    }
    if (type & ActivityTypeMiddle) {
        factory = [self.activityDic objectForKey:NSStringFromClass(MiddleActivity.class)];
        if (factory) {
            [factory dismiss];
            [self.activityDic removeObjectForKey:NSStringFromClass(MiddleActivity.class)];
        }
    }
}

- (NSMutableDictionary *)activityDic {
    if (!_activityDic) {
        _activityDic = [NSMutableDictionary dictionary];
    }
    return _activityDic;
}

@end
