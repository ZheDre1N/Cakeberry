//
//  MenuPresenter.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 10.01.2022.
//

import Foundation

protocol MenuViewProtocol: AnyObject {
    
}

protocol MenuViewPresenterProtocol: AnyObject {
    init(view: MenuViewProtocol)
    func tapOnProductType(productType: ProductType)
}

class MenuPresenter: MenuViewPresenterProtocol {
    
    weak var view: MenuViewProtocol!
    public var coordinator: MenuCoordinatorProtocol!

    required init(view: MenuViewProtocol) {
        self.view = view
    }
    
    func tapOnProductType(productType: ProductType) {
        coordinator?.showDetailVC(with: productType)
    }
}
