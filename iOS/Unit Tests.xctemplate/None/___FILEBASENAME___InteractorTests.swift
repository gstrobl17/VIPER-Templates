//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import XCTest
@testable import ___PACKAGENAME___	//TODO: Fix testable target //swiftlint:disable:this todo

class ___VARIABLE_productName:identifier___InteractorTests: XCTestCase {

    var presenter: Mock___VARIABLE_productName:identifier___InteractorOutput!

    override func setUp() {
        super.setUp()

        presenter = Mock___VARIABLE_productName:identifier___InteractorOutput()
    }

    override func tearDown() {
        // Put teardown code here. 
        // This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // MARK: - init -

    func testInit() {

        let interactor = ___VARIABLE_productName:identifier___Interactor()
        interactor.presenter = presenter

    }

    // MARK: - ___VARIABLE_productName:identifier___InteractorInputProtocol methods -

}
