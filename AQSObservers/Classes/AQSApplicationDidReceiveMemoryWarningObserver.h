//
//  AQSApplicationDidReceiveMemoryWarningObserver.h
//  AQSObservers
//
//  Created by kaiinui on 2014/11/28.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^AQSApplicationDidReceiveMemoryWarningObserveBlock)();

/**
 *  An observer that calls passed block when the application recieve memory warning.
 */
@interface AQSApplicationDidReceiveMemoryWarningObserver : NSObject

+ (instancetype)observerWithBlock:(AQSApplicationDidReceiveMemoryWarningObserveBlock)block;

@end
