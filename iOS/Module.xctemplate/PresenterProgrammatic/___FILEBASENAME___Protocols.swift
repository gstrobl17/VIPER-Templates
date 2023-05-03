//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

// MARK: Interface -
protocol ___VARIABLE_productName:identifier___InterfaceProtocol: AnyObject {

    var delegate: ___VARIABLE_productName:identifier___InterfaceDelegate? { get set }

}

protocol ___VARIABLE_productName:identifier___InterfaceDelegate: AnyObject {

}

// MARK: Wireframe -
protocol ___VARIABLE_productName:identifier___WireframeProtocol: AnyObject {

    var viewController: UIViewController? { get set }

    static func createModule() -> (view: UIViewController, interface: ___VARIABLE_productName:identifier___InterfaceProtocol)

}

// MARK: Interactor -
protocol ___VARIABLE_productName:identifier___InteractorOutputProtocol: AnyObject {

    /* Interactor -> Presenter */
}

protocol ___VARIABLE_productName:identifier___InteractorInputProtocol: AnyObject {

    var presenter: ___VARIABLE_productName:identifier___InteractorOutputProtocol? { get set }

    /* Presenter -> Interactor */
}

// MARK: Presenter -
protocol ___VARIABLE_productName:identifier___PresenterProtocol: AnyObject {

    var interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol? { get set }

    /* ViewController -> Presenter */
}

// MARK: View -
protocol ___VARIABLE_productName:identifier___ViewProtocol: AnyObject {

    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol? { get set }

    /* Presenter -> ViewController */
}
