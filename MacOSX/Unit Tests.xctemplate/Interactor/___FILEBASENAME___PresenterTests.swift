//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import AppKit
import XCTest
@testable import ___PACKAGENAME___	//TODO: Fix testable target //swiftlint:disable:this todo

class ___VARIABLE_productName:identifier___PresenterTests: XCTestCase {

    var view: Mock___VARIABLE_productName:identifier___View!
    var interactor: Mock___VARIABLE_productName:identifier___InteractorInput!
    var router: ___VARIABLE_productName:identifier___WireframeProtocol!
    var presenter: ___VARIABLE_productName:identifier___Presenter!

    override func setUp() {
        super.setUp()

        view = Mock___VARIABLE_productName:identifier___View()
        interactor = Mock___VARIABLE_productName:identifier___InteractorInput()
        router = ___VARIABLE_productName:identifier___Router()
        presenter = ___VARIABLE_productName:identifier___Presenter(interface: view, interactor: interactor, router: router)
    }

    override func tearDown() {
        // Put teardown code here. 
        // This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // MARK: - ___VARIABLE_productName:identifier___PresenterProtocol methods -

    // MARK: - ___VARIABLE_productName:identifier___InteractorOutputProtocol methods -

}
