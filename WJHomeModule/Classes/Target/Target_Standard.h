//
//  Target_Standard.h
//  Pods
//
//  Created by Lawrence on 2017/8/7.
//
//

#import <Foundation/Foundation.h>

@interface Target_Standard : NSObject

/**
 首页

 @param params 传递参数
 @return 首页控制器
 */
- (UIViewController *)Action_homeViewController:(NSDictionary *)params;

@end
