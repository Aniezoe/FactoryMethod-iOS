//
//  MiddleActivity.m
//  FactoryMethod-iOS
//
//  Created by niezhiqiang on 2022/2/10.
//

#import "MiddleActivity.h"

@implementation MiddleActivity

- (void)show {
    NSLog(@"%@ show", NSStringFromClass(self.class));
}

- (void)dismiss {
    NSLog(@"%@ dismiss", NSStringFromClass(self.class));
}

@end
