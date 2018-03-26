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

    static func createModule() -> (NSViewController & ___VARIABLE_productName:identifier___InterfaceProtocol) {
        // swiftlint:disable force_cast todo
        //TODO: set real storyboard name and view controller identifier
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        let identifier = NSStoryboard.SceneIdentifier(rawValue: "___VARIABLE_productName:identifier___ViewController")
        let view = storyboard.instantiateController(withIdentifier: identifier) as! ___VARIABLE_productName:identifier___ViewController
        // swiftlint:enable force_cast todo
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let router = ___VARIABLE_productName:identifier___Router()
        let presenter = ___VARIABLE_productName:identifier___Presenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
