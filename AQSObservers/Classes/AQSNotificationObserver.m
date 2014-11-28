//
//  AQSNotificationObserver.m
//  AQSObservers
//
//  Created by kaiinui on 2014/11/28.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "AQSNotificationObserver.h"

@interface AQSNotificationObserver ()

@property (nonatomic, strong, readonly) AQSNotificationObserveBlock block;

@end

@implementation AQSNotificationObserver

# pragma mark - Factory Methods

+ (instancetype)observerWithBlock:(AQSNotificationObserveBlock)block name:(NSString *)notificationName {
    return [[self alloc] initWithBlock:block name:notificationName object:nil];
}

+ (instancetype)observerWithBlock:(AQSNotificationObserveBlock)block name:(NSString *)notificationName object:(id)object {
    return [[self alloc] initWithBlock:block name:notificationName object:object];
}

# pragma mark - Instantiation

- (instancetype)initWithBlock:(AQSNotificationObserveBlock)block name:(NSString *)name object:(id)object {
    self = [super init];
    if (self) {
        _block = block;
        [self startObservationWithName:name withObject:object];
    }
    return self;
}

# pragma mark - Lifecycle

// @override
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

# pragma mark - Observation

- (void)startObservationWithName:(NSString *)name withObject:(id)object {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notification:) name:name object:object];
}

- (void)notification:(NSNotification *)notification {
    self.block(notification.userInfo, notification.object);
}

@end
