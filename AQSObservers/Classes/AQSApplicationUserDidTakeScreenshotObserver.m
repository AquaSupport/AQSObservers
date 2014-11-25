//
//  AQSApplicationUserDidTakeScreenshotObserver.m
//  AQSObservers
//
//  Created by kaiinui on 2014/11/25.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "AQSApplicationUserDidTakeScreenshotObserver.h"
#import <UIKit/UIKit.h>

@interface AQSApplicationUserDidTakeScreenshotObserver ()

@property (nonatomic, strong, readonly) AQSApplicationUserDidTakeScreenshotObserveBlock block;

@end

@implementation AQSApplicationUserDidTakeScreenshotObserver

# pragma mark - Instantiation

- (instancetype)initWithBlock:(AQSApplicationUserDidTakeScreenshotObserveBlock)block {
    self = [super init];
    if (self) {
        _block = block;
        [self startObservation];
    }
    return self;
}

+ (instancetype)observerWithBlock:(AQSApplicationUserDidTakeScreenshotObserveBlock)block {
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
                                                 name:UIApplicationUserDidTakeScreenshotNotification
                                               object:[UIApplication sharedApplication]];
}

- (void)notification:(NSNotification *)notification {
    self.block();
}

@end
