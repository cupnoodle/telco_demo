//
//  telco_demoUITests.swift
//  telco_demoUITests
//
//  Created by Axel Kee on 15/02/2017.
//  Copyright © 2017 Sweatshop. All rights reserved.
//

import XCTest

class telco_demoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        //XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDigi() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
		let app = XCUIApplication()
		app.launchEnvironment = ["carrier" : "DiGi"]
		app.launch()
		
		XCTAssert(app.staticTexts["Digi user get 30% off!"].exists)
    }
	
	func testMaxis() {
		let app = XCUIApplication()
		app.launchEnvironment = ["carrier" : "MY MAXIS"]
		app.launch()
		
		XCTAssert(app.staticTexts["Maxis user get 10% off!"].exists)
	}
	
	func testCelcom() {
		let app = XCUIApplication()
		app.launchEnvironment = ["carrier" : "CELCOM"]
		app.launch()
		
		XCTAssert(app.staticTexts["Celcom user get 50% off!"].exists)
	}
    
}
