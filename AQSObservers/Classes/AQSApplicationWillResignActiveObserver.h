//
//  AQSApplicationWillResignActiveObserver.h
//  AQSObservers
//
//  Created by kaiinui on 2014/11/25.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^AQSApplicationWillResignActiveObserveBlock)();

/**
 *  An observer that call the block when the app is no longer active and loses focus.
 *
 *  @see https://developer.apple.com/library/ios/documentation/uikit/reference/UIApplication_Class/index.html#//apple_ref/c/data/UIApplicationWillResignActiveNotification
 */
@interface AQSApplicationWillResignActiveObserver : NSObject

+ (instancetype)observerWithBlock:(AQSApplicationWillResignActiveObserveBlock)block;

@end
