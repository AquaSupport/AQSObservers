//
//  AQSApplicationWillResignActiveObserver.m
//  AQSObservers
//
//  Created by kaiinui on 2014/11/25.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "AQSApplicationWillResignActiveObserver.h"
#import <UIKit/UIKit.h>

@interface AQSApplicationWillResignActiveObserver ()

@property (nonatomic, strong, readonly) AQSApplicationWillResignActiveObserveBlock block;

@end

@implementation AQSApplicationWillResignActiveObserver

# pragma mark - Instantiation

- (instancetype)initWithBlock:(AQSApplicationWillResignActiveObserveBlock)block {
    self = [super init];
    if (self) {
        _block = block;
    }
    return self;
}

+ (instancetype)observerWithBlock:(AQSApplicationWillResignActiveObserveBlock)block {
    return [[self alloc] initWithBlock:block];
}

# pragma mark - Lifecycle

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

# pragma mark - Start Observation

- (void)startObservation {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notification:)
                                                 name:UIApplicationWillResignActiveNotification
                                               object:[UIApplication sharedApplication]];
}

- (void)notification:(NSNotification *)notification {
    self.block();
}

@end