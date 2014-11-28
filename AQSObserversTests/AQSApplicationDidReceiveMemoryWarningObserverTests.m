//
//  AQSApplicationDidReceiveMemoryWarningObserverTests.m
//  AQSObservers
//
//  Created by kaiinui on 2014/11/28.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import <OCMock.h>

#import <UIKit/UIKit.h>

#import "AQSApplicationDidReceiveMemoryWarningObserver.h"

@interface AQSApplicationDidReceiveMemoryWarningObserverTests : XCTestCase

@end

@implementation AQSApplicationDidReceiveMemoryWarningObserverTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testItCallsPassedBlockWhenReceiveMemoryWarning {
    XCTestExpectation *expectation = [self expectationWithDescription:@"calls passed block when receive memory warning"];
    
    AQSApplicationDidReceiveMemoryWarningObserver *observer = [AQSApplicationDidReceiveMemoryWarningObserver observerWithBlock:^{
        [expectation fulfill];
        
        XCTAssertTrue(YES);
    }];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:UIApplicationDidReceiveMemoryWarningNotification object:[UIApplication sharedApplication]];
    
    [self waitForExpectationsWithTimeout:1.0 handler:nil];
}

@end
