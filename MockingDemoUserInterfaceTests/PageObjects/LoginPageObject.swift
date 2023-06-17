//
//  LoginPageObject.swift
//  MockingDemoUserInterfaceTests
//
//  Created by Krystian Grabowy on 17/06/2023.
//

import Foundation
import XCTest

class LoginPageObject {
    
    var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var usernameTextfield: XCUIElement {
        app.textFields["usernameTextField"]
    }
    
    var passwordTextfield: XCUIElement {
        app.textFields["passwordTextField"]
    }
    
    var loginButton: XCUIElement {
        app.buttons["loginButton"]
    }
    
    var messageText: XCUIElement {
        app.staticTexts["messageText"]
    }
    
    var dashboardText: XCUIElement {
        app.staticTexts["Dashboard"]
    }
}
