//
//  BottomActivity.m
//  FactoryMethod-iOS
//
//  Created by niezhiqiang on 2022/2/10.
//

#import "BottomActivity.h"

@implementation BottomActivity

- (void)show {
    NSLog(@"%@ show", NSStringFromClass(self.class));
}

- (void)dismiss {
    NSLog(@"%@ dismiss", NSStringFromClass(self.class));
}

@end
