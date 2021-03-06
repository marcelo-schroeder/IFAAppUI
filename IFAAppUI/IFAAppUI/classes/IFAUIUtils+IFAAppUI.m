//
// Created by Marcelo Schroeder on 24/04/15.
// Copyright (c) 2015 InfoAccent Pty Ltd. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "IFAAppUI.h"


@implementation IFAUIUtils (IFAAppUI)

#pragma mark - Public

+ (void)setKeyWindowRootViewController:(UIViewController*)a_viewController{
//    [self dismissSplitViewControllerPopover];
    [UIApplication sharedApplication].keyWindow.rootViewController = a_viewController;
}

+ (void)setKeyWindowRootViewControllerToMainStoryboardInitialViewController {
    [self setKeyWindowRootViewController:[[[IFAUIConfiguration sharedInstance] storyboard] instantiateInitialViewController]];
}

+ (CGSize)statusBarSize{
    return [self statusBarFrame].size;
}

+ (CGSize)statusBarSizeForCurrentOrientation{
    CGSize l_statusBarSize = [self statusBarSize];
    return [self isDeviceInLandscapeOrientation] && ![IFAUtils isIOS8OrGreater] ? CGSizeMake(l_statusBarSize.height, l_statusBarSize.width) : l_statusBarSize;
}

+ (CGRect)statusBarFrame{
    return [[UIApplication sharedApplication] statusBarFrame];
}

+(IFAMenuViewController *)mainMenuViewController {
    IFAMenuViewController *l_menuViewController = nil;
    UIViewController *l_rootViewController = [[UIApplication sharedApplication].delegate.window rootViewController];
    if ([l_rootViewController isKindOfClass:[UISplitViewController class]]) {
        UISplitViewController *l_splitViewController = (UISplitViewController *) l_rootViewController;
        UINavigationController *l_navigationController = (UINavigationController *) (l_splitViewController.viewControllers)[0];
        l_menuViewController = (IFAMenuViewController *) l_navigationController.topViewController;
    }
    return l_menuViewController;
}

+(UIView*)actionSheetShowInViewForViewController:(UIViewController*)a_viewController{
    UIView *l_view = nil;
    if (!(l_view = a_viewController.tabBarController.view)) {
        if (!(l_view = a_viewController.splitViewController.view)) {
            l_view = a_viewController.navigationController.toolbar;
            if (l_view.hidden || !l_view) { // Added check for hidden is it was crashing the app in some cases when the toolbar was not visible and it had been used by a view controller that had been pushed
                l_view = a_viewController.view;
            }
        }
    }
    return l_view;
}

+ (void)presentServerErrorAlertViewForNetworkReachable:(BOOL)a_networkReachable
                           withPresenterViewController:(UIViewController *)a_presenterViewController {
    NSString *title = [self serverErrorAlertTitleForNetworkReachable:a_networkReachable];
    NSString *message = [self serverErrorAlertMessageForNetworkReachable:a_networkReachable];
    if (a_presenterViewController) {
        [a_presenterViewController ifa_presentAlertControllerWithTitle:title
                                                               message:message];
    } else {
        [IFAUIUtils presentAlertControllerWithTitle:title
                                            message:message];
    }
}

+ (NSString *)serverErrorAlertTitleForNetworkReachable:(BOOL)a_networkReachable {
    NSString *title;
    if (a_networkReachable) {
        NSString *unlocalisedString = [IFAUtils infoPList][@"IFAErrorAlertTitleServerError"] ?: @"Server error";
        title = NSLocalizedStringFromTable(unlocalisedString, @"IFALocalizable", nil);
    }else{
        NSString *unlocalisedString = [IFAUtils infoPList][@"IFAErrorAlertTitleNoConnectivity"] ?: @"No Internet access";
        title = NSLocalizedStringFromTable(unlocalisedString, @"IFALocalizable", nil);
    }
    return title;
}

+ (NSString *)serverErrorAlertMessageForNetworkReachable:(BOOL)a_networkReachable {
    NSString *message;
    if (a_networkReachable) {
        NSString *unlocalisedString = [IFAUtils infoPList][@"IFAErrorAlertMessageServerError"] ?: @"It was not possible to complete the operation. Please try again later.";
        message = NSLocalizedStringFromTable(unlocalisedString, @"IFALocalizable", nil);
    }else{
        NSString *unlocalisedString = [IFAUtils infoPList][@"IFAErrorAlertMessageNoConnectivity"] ?: @"It was not possible to complete the operation. Please try again when you are back online.";
        message = NSLocalizedStringFromTable(unlocalisedString, @"IFALocalizable", nil);
    }
    return message;
}

@end