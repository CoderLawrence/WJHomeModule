//
//  Target_Standard.m
//  Pods
//
//  Created by Lawrence on 2017/8/7.
//
//

#import "Target_Standard.h"
#import "WJHomeViewController.h"

@implementation Target_Standard

- (UIViewController *)Action_homeViewController:(NSDictionary *)params {
    WJHomeViewController *homeViewController = [[WJHomeViewController alloc] init];
    return homeViewController;
}

@end
