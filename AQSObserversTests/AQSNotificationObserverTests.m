//
//  AQSNotificationObserverTests.m
//  AQSObservers
//
//  Created by kaiinui on 2014/11/28.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import <UIKit/UIKit.h>

#import "AQSNotificationObserver.h"

@interface AQSNotificationObserverTests : XCTestCase

@end

@implementation AQSNotificationObserverTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testItCallsPassedBlockWhenItReceivedNotification {
    XCTestExpectation *expectation = [self expectationWithDescription:@"calls passed block when it receive notification"];
    
    NSDictionary *postUserInfo = @{
                                   @"foo": @"bar"
                                   };
    
    AQSNotificationObserver *observer =[AQSNotificationObserver observerWithBlock:^(NSDictionary *userInfo, id object) {
        [expectation fulfill];
        
        XCTAssertEqualObjects(userInfo, postUserInfo);
        XCTAssertNil(object);
    } name:@"HogeNotification"];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"HogeNotification" object:nil userInfo:postUserInfo];
    
    [self waitForExpectationsWithTimeout:0.4 handler:nil];
}

- (void)testItCallsPassedBlockWhenItReceivedNotificationWithObject {
    XCTestExpectation *expectation = [self expectationWithDescription:@"calls passed block when it receive notification with object"];
    
    NSDictionary *postUserInfo = @{
                                   @"foo": @"bar"
                                   };
    
    AQSNotificationObserver *observer =[AQSNotificationObserver observerWithBlock:^(NSDictionary *userInfo, id object) {
        [expectation fulfill];
        
        XCTAssertEqualObjects(userInfo, postUserInfo);
        XCTAssertEqualObjects(object, [UIApplication sharedApplication]);
    } name:@"HogeNotification"];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"HogeNotification" object:[UIApplication sharedApplication] userInfo:postUserInfo];
    
    [self waitForExpectationsWithTimeout:0.4 handler:nil];
}

@end
