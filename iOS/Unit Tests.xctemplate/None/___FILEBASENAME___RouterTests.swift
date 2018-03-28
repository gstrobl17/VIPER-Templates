//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import XCTest
// swiftlint:disable todo
@testable import ___PACKAGENAME___	//TODO: Fix testable target
// swiftlint:enable todo

class ___VARIABLE_productName:identifier___RouterTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. 
        // This method is called before the invocation of each test method in the class.   
    }

    override func tearDown() {
        // Put teardown code here. 
        // This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testCreateModule() {

        let viewController = ___VARIABLE_productName:identifier___Router.createModule()

        XCTAssertTrue(viewController is ___VARIABLE_productName:identifier___ViewProtocol)
        if let viewController = viewController as? ___VARIABLE_productName:identifier___ViewProtocol {
            XCTAssertNotNil(viewController.presenter)
            if let presenter = viewController.presenter {
                XCTAssertTrue(presenter is ___VARIABLE_productName:identifier___Presenter)
                if let presenter = presenter as? ___VARIABLE_productName:identifier___Presenter {
                    XCTAssertNotNil(presenter.router.viewController)
                    XCTAssertTrue(presenter.router.viewController === viewController)
                }
            }
        }
    }
}
