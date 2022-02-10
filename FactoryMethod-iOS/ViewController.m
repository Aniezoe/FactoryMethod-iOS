//
//  ViewController.m
//  FactoryMethod-iOS
//
//  Created by niezhiqiang on 2022/2/10.
//

#import "ViewController.h"
#import "ActivityManager.h"

@interface ViewController ()

@property (nonatomic, strong) ActivityManager *activityManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.activityManager = [ActivityManager showWithActivity:ActivityTypeTop | ActivityTypeMiddle];
    [self.activityManager dismissWithActivity:ActivityTypeTop];
}


@end
