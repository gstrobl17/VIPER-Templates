//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

// MARK: Interface -
protocol ___VARIABLE_productName:identifier___InterfaceProtocol: class {

    weak var delegate: ___VARIABLE_productName:identifier___InterfaceDelegate? { get set }

}

protocol ___VARIABLE_productName:identifier___InterfaceDelegate: class {

}

// MARK: Wireframe -
protocol ___VARIABLE_productName:identifier___WireframeProtocol: class {

    static func createModule() -> (UIViewController & ___VARIABLE_productName:identifier___InterfaceProtocol)

}

// MARK: Interactor -
protocol ___VARIABLE_productName:identifier___InteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

protocol ___VARIABLE_productName:identifier___InteractorInputProtocol: class {

    var presenter: ___VARIABLE_productName:identifier___InteractorOutputProtocol? { get set }

    /* Presenter -> Interactor */
}

// MARK: Presenter -
protocol ___VARIABLE_productName:identifier___PresenterProtocol: class {

    var interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol? { get set }

    /* ViewController -> Presenter */
}

// MARK: View -
protocol ___VARIABLE_productName:identifier___ViewProtocol: class {

    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol? { get set }

    /* Presenter -> ViewController */
}
