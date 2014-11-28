//
//  AQSApplicationDidReceiveMemoryWarningObserver.m
//  AQSObservers
//
//  Created by kaiinui on 2014/11/28.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "AQSApplicationDidReceiveMemoryWarningObserver.h"
#import <UIKit/UIKit.h>

@interface AQSApplicationDidReceiveMemoryWarningObserver ()

@property (nonatomic, strong, readonly) AQSApplicationDidReceiveMemoryWarningObserveBlock block;

@end

@implementation AQSApplicationDidReceiveMemoryWarningObserver

# pragma mark - Instantiation

- (instancetype)initWithBlock:(AQSApplicationDidReceiveMemoryWarningObserveBlock)block {
    self = [super init];
    if (self) {
        _block = block;
        [self startObservation];
    }
    return self;
}

+ (instancetype)observerWithBlock:(AQSApplicationDidReceiveMemoryWarningObserveBlock)block {
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
                                                 name:UIApplicationDidReceiveMemoryWarningNotification
                                               object:[UIApplication sharedApplication]];
}

- (void)notification:(NSNotification *)notification {
    self.block();
}

@end
