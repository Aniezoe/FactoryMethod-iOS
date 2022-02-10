//
//  TopActivity.m
//  FactoryMethod-iOS
//
//  Created by niezhiqiang on 2022/2/10.
//

#import "TopActivity.h"

@implementation TopActivity

- (void)show {
    NSLog(@"%@ show", NSStringFromClass(self.class));
}

- (void)dismiss {
    NSLog(@"%@ dismiss", NSStringFromClass(self.class));
}

@end
