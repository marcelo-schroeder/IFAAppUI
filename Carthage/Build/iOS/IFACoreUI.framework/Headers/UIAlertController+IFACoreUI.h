//
// Created by Marcelo Schroeder on 26/07/15.
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

@interface UIAlertController (IFACoreApp)

/**
* Presents the alert controller in a standalone manner.
* A temporary top level window and view controller are specifically created for this purpose and disposed of when the alert is dismissed by the user.
* @param animated Pass YES to animate the presentation; otherwise, pass NO.
* @param completion A completion block to be executed after the view transition has been completed.
*/
- (void)ifa_presentAnimated:(BOOL)animated
             withCompletion:(void (^)(void))completion;

@end
