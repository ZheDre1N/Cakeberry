//
//  DetailPresenter.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 10.01.2022.
//

import Foundation

protocol DetailViewProtocol: AnyObject {
    func presentProductType(productType: ProductType)
    func sendToPresenter(product: Product)
}

protocol DetailViewPresenterProtocol: AnyObject {
    init(view: DetailViewProtocol, productType: ProductType)
    
    func addToCart(product: Product)
}

class DetailPresenter: DetailViewPresenterProtocol {
    
    weak var view: DetailViewProtocol?
    var productType: ProductType?
    
    required init(view: DetailViewProtocol, productType: ProductType) {
        self.view = view
        self.productType = productType
    }
    
    func addToCart(product: Product) {
        
    }
}
