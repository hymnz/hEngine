//
//  AppDelegate.h
//  HEngine
//
//  Created by pongsil vachirajongkol on 7/9/55 BE.
//  Copyright (c) 2555 pongsil.v@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ApplicationDelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)

@class ViewController;
@class HEngine;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) HEngine *hEngine;

@end
