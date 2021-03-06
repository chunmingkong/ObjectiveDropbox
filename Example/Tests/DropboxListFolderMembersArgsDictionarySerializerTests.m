//
//  DropboxListFolderMembersArgsDictionarySerializerTests.m
//  ObjectiveDropbox
//
//  Created by Михаил Мотыженков on 25.04.16.
//  Copyright © 2016 Mikhail Motyzhenkov. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DropboxListFolderMembersArgs+DictionarySerializer.h"

@interface DropboxListFolderMembersArgsDictionarySerializerTests : XCTestCase

@property DropboxListFolderMembersArgs *arg;

@end

@implementation DropboxListFolderMembersArgsDictionarySerializerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDictionary {
    NSString *sharedFolderID = @"a;sldfa;lsdfj";
    UInt32 limit = 33;
    self.arg = [[DropboxListFolderMembersArgs alloc] initWithSharedFolderID:sharedFolderID limit:limit];
    NSDictionary *expectedDic = @{ @"shared_folder_id": sharedFolderID,
                                   @"actions": @[],
                                   @"limit": @(limit) };
    
    NSDictionary *dic = [self.arg dictionaryFromParams];
    
    XCTAssertEqualObjects(dic, expectedDic);
}


@end
