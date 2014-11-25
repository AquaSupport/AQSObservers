//
//  AQSApplicationDidBecomeActiveObserver.h
//  AQSObservers
//
//  Created by kaiinui on 2014/11/25.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^AQSApplicationDidBecomeActiveObserveBlock)();

/**
 *  An observer that call the passed block when the app becomes active.
 *
 *  @see https://developer.apple.com/library/ios/documentation/uikit/reference/UIApplication_Class/index.html#//apple_ref/c/data/UIApplicationDidBecomeActiveNotification
 */
@interface AQSApplicationDidBecomeActiveObserver : NSObject

+ (instancetype)observerWithBlock:(AQSApplicationDidBecomeActiveObserveBlock)block;

@end
