//
//  AQSApplicationDidBecomeActiveObserver.m
//  AQSObservers
//
//  Created by kaiinui on 2014/11/25.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "AQSApplicationDidBecomeActiveObserver.h"
#import <UIKit/UIKit.h>

@interface AQSApplicationDidBecomeActiveObserver ()

@property (nonatomic, strong, readonly) AQSApplicationDidBecomeActiveObserveBlock block;

@end

@implementation AQSApplicationDidBecomeActiveObserver

# pragma mark - Instantiation

- (instancetype)initWithBlock:(AQSApplicationDidBecomeActiveObserveBlock)block {
    self = [super init];
    if (self) {
        _block = block;
    }
    return self;
}

+ (instancetype)observerWithBlock:(AQSApplicationDidBecomeActiveObserveBlock)block {
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
                                                 name:UIApplicationDidBecomeActiveNotification
                                               object:[UIApplication sharedApplication]];
}

- (void)notification:(NSNotification *)notification {
    self.block();
}

@end
