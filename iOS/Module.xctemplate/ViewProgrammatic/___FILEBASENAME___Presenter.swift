//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_productName:identifier___Presenter {

    weak internal var view: ___VARIABLE_productName:identifier___ViewProtocol?
    var interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol?
    let router: ___VARIABLE_productName:identifier___WireframeProtocol

    init(view: ___VARIABLE_productName:identifier___ViewProtocol, interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol?, router: ___VARIABLE_productName:identifier___WireframeProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

}

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresenterProtocol {

}
