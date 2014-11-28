//
//  AQSNotificationObserver.h
//  AQSObservers
//
//  Created by kaiinui on 2014/11/28.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^AQSNotificationObserveBlock)(NSDictionary *userInfo, id object);

/**
 *  An observer that calls given block when it receives an notification.
 */
@interface AQSNotificationObserver : NSObject

/**
 *  Instantiate an observer with notification name.
 *  The passed block will be called when it receives notification whose name is given name and object is `nil`.
 *
 *  @param block            A block that will be called when it receives notification.
 *  @param notificationName A name of notfication that you want to receive.
 *
 *  @return An instance of observer
 */
+ (instancetype)observerWithBlock:(AQSNotificationObserveBlock)block name:(NSString *)notificationName;

/**
 *  Instantiate an observer with notification name and object.
 *  The passed block will be called when it receives notification whose name is given name and object is given object.
 *
 *  @param block            A block that will be called when it receives notification.
 *  @param notificationName A name of notfication that you want to receive.
 *  @param object           A object of notification that you want to receive.
 *
 *  @return An instance of observer
 */
+ (instancetype)observerWithBlock:(AQSNotificationObserveBlock)block name:(NSString *)notificationName object:(id)object;

@end
