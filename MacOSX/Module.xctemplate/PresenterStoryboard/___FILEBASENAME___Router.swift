//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import AppKit

class ___VARIABLE_productName:identifier___Router: ___VARIABLE_productName:identifier___WireframeProtocol {

    weak var viewController: NSViewController?

    static func createModule() -> (view: NSViewController, interface: ___VARIABLE_productName:identifier___InterfaceProtocol) {
        //TODO: set real storyboard name and view controller identifier //swiftlint:disable:this todo
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        let identifier = NSStoryboard.SceneIdentifier(rawValue: "___VARIABLE_productName:identifier___ViewController")
        let view = storyboard.instantiateController(withIdentifier: identifier) as! ___VARIABLE_productName:identifier___ViewController //swiftlint:disable:this force_cast
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let router = ___VARIABLE_productName:identifier___Router()
        let presenter = ___VARIABLE_productName:identifier___Presenter(view: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return (view, presenter)
     }
}
