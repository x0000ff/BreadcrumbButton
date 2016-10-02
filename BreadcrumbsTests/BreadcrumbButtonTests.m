//
//  BreadcrumbButtonTests.m
//  BreadcrumbsTests
//
//  Created by x0000ff on 02/10/16.
//  Copyright © 2016 x0000ff. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "BreadcrumbButton.h"
#import <OCMock/OCMock.h>

@interface BreadcrumbButton(MakePublic)

- (void) configure;

@end

@interface BreadcrumbButtonTests : XCTestCase

@end

@implementation BreadcrumbButtonTests

- (void)test_ShouldCallSetupOnInit {

    id mock = OCMClassMock([BreadcrumbButton class]);
    OCMStub([mock createButton]).andForwardToRealObject();

//    BreadcrumbButton * btn = [mock createButton];

//    BreadcrumbButton * btn = [[mock alloc] init];
//
//    BreadcrumbButton * btn = [[BreadcrumbButton alloc] init];
//    id mock2 = OCMPartialMock([[BreadcrumbButton alloc] init]);
//    BreadcrumbButton * btn = [[BreadcrumbButton alloc] init];
//    id mock = OCMPartialMock([BreadcrumbButton alloc]);
//    OCMStub([mock configure]).andForwardToRealObject();
//    OCMStub([mock init]).andForwardToRealObject();
//    id mock2 = [mock init];
    OCMVerify([mock configure]);
//    OCMVerify([btn configure]);
//    OCMVerify([mock2 configure]);

//    NSLog(@"1");
//    id mock = OCMPartialMock([BreadcrumbButton alloc]);
//    NSLog(@"2");
//    OCMStub([mock configure]).andForwardToRealObject();
//    NSLog(@"3");
//    mock = [mock init];
//    NSLog(@"4");
//    OCMVerify([mock configure]);
//    NSLog(@"5");

//    NSLog(@"1");
//    BreadcrumbButton * btn = [BreadcrumbButton alloc];
//    NSLog(@"2");
//    OCMStub([btn configure]).andForwardToRealObject();
//    NSLog(@"3");
//    btn = [btn init];
//    NSLog(@"4");
//    OCMVerify([btn configure]);
//    NSLog(@"5");

//    id mock = OCMPartialMock([BreadcrumbButton alloc]);
//    mock = [mock init];
//    id classMock = OCMClassMock([BreadcrumbButton class]);
//    OCMStub([classMock init]).andForwardToRealObject();
//
//    id mock = [OCMockObject mockForClass:[BreadcrumbButton class]];
//    [[mock expect] configure];
//    BreadcrumbButton * btn = [[mock alloc] init];
//    [mock verify];

//    id mock = OCMClassMock([BreadcrumbButton class]);
//    BreadcrumbButton * btn = [[mock alloc] init];
//    OCMVerify([mock configure]);
//
//    id buttonMock = OCMPartialMock([[BreadcrumbButton alloc] init]);
//    OCMStub([buttonMock configure]).andForwardToRealObject();
//    OCMVerify([buttonMock configure]);
}

@end
