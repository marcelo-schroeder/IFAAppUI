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

#import <Foundation/Foundation.h>
@import IFACoreUI;

@interface IFAUIUtils (IFAAppUI)
+ (void)setKeyWindowRootViewController:(UIViewController *)a_viewController;

+ (void)setKeyWindowRootViewControllerToMainStoryboardInitialViewController;

+ (CGSize)statusBarSize;

+ (CGSize)statusBarSizeForCurrentOrientation;

+ (CGRect)statusBarFrame;

+ (IFAMenuViewController *)mainMenuViewController;

+ (UIView *)actionSheetShowInViewForViewController:(UIViewController *)a_viewController;

+ (void)presentServerErrorAlertViewForNetworkReachable:(BOOL)a_networkReachable
                           withPresenterViewController:(UIViewController *)a_presenterViewController;

/**
 * Title used in server error alerts.
 * The following plist properties can be used to modify the default strings: IFAErrorAlertTitleServerError for a_networkReachable=YES, otherwise IFAErrorAlertTitleNoConnectivity is used.
 * @param a_networkReachable YES if network is reachable, otherwise NO.
 * @returns Title for the server error alert.
 */
+ (NSString *)serverErrorAlertTitleForNetworkReachable:(BOOL)a_networkReachable;

/**
 * Message used in server error alerts.
 * The following plist properties can be used to modify the default strings: IFAErrorAlertMessageServerError for a_networkReachable=YES, otherwise IFAErrorAlertMessageNoConnectivity is used.
 * @param a_networkReachable YES if network is reachable, otherwise NO.
 * @returns Message for the server error alert.
 */
+ (NSString *)serverErrorAlertMessageForNetworkReachable:(BOOL)a_networkReachable;

@end