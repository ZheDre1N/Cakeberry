//
//  CartPresenter.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 11.01.2022.
//

import Foundation

protocol CartViewProtocol: AnyObject {
    
}

protocol CartViewPresenterProtocol: AnyObject {
    init(view: CartViewProtocol)
}

class CartPresenter: CartViewPresenterProtocol {
    
    weak var view: CartViewProtocol!
    public var coordinator: CartCoordinatorProtocol!

    required init(view: CartViewProtocol) {
        self.view = view
    }
}
