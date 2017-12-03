//
//  AngelTalkIOSUITests.swift
//  AngelTalkIOSUITests
//
//  Created by 신황규_23234_솔루션개발그룹_Gerard on 2/10/17.
//  Copyright © 2017 sds. All rights reserved.
//

import XCTest

class AngelTalkIOSUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWhenLaunchMainStoryBoard_ThenShowCategories(){
        let firstChild = app.collectionViews.children(matching:.any).element(boundBy: 0)
        
        XCTAssertNotNil(firstChild)
    }
    
    func testWhenLaunchMainStoryBoard_ThenViewHas5Categories(){
        XCTAssertEqual(app.collectionViews.children(matching:.any).count, 5)
    }
}
