//
//  ComeOutOfBoredomUITestsLaunchTests.swift
//  ComeOutOfBoredomUITests
//
//  Created by Amita Ghosh on 2/23/23.
//

import XCTest

final class ComeOutOfBoredomUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
        
        
        app/*@START_MENU_TOKEN@*/.staticTexts["Get an activity suggestion !"]/*[[".buttons[\"Get an activity suggestion !\"].staticTexts[\"Get an activity suggestion !\"]",".staticTexts[\"Get an activity suggestion !\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Done"]/*[[".buttons[\"Done\"].staticTexts[\"Done\"]",".staticTexts[\"Done\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
}
