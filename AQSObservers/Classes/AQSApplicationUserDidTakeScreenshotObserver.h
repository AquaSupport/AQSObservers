//
//  AQSApplicationUserDidTakeScreenshotObserver.h
//  AQSObservers
//
//  Created by kaiinui on 2014/11/25.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^AQSApplicationUserDidTakeScreenshotObserveBlock)();

/**
 *  An observer that call the passed block when the user presses the Home and Lock buttons to take a screenshot.
 *
 *  @see https://developer.apple.com/library/ios/documentation/uikit/reference/UIApplication_Class/index.html#//apple_ref/c/data/UIApplicationUserDidTakeScreenshotNotification
 */
@interface AQSApplicationUserDidTakeScreenshotObserver : NSObject

+ (instancetype)observerWithBlock:(AQSApplicationUserDidTakeScreenshotObserveBlock)block;

@end
