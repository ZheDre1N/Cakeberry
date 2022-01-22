//
//  DetailPresenter.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 10.01.2022.
//

import Foundation

protocol DetailViewProtocol: AnyObject {
    func presentProductType(product: Product)
    func sendToPresenter(product: Product)
}

protocol DetailViewPresenterProtocol: AnyObject {
    init(view: DetailViewProtocol, product: Product)
    
    func addToCart(product: Product)
}

class DetailPresenter: DetailViewPresenterProtocol {
    
    weak var view: DetailViewProtocol?
    var product: Product?
    
    required init(view: DetailViewProtocol, product: Product) {
        self.view = view
        self.product = product
    }
    
    func addToCart(product: Product) {
        
    }
}
