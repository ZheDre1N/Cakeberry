//
//  ProductType.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 10.01.2022.
//

import Foundation

protocol ProductType {
    var name: String { get }
    var price: Int { get }
    var imageName: String { get }
    var description: String { get }
}

struct ProductTypeImpl: ProductType {
    let name: String
    let price: Int
    let imageName: String
    let description: String
    
    static func getProducts() -> [ProductImpl] {
        let products = [
            ProductImpl(name: "123", price: 123, imageName: "123", description: "123"),
            ProductImpl(name: "123", price: 123, imageName: "123", description: "123"),
            ProductImpl(name: "123", price: 123, imageName: "123", description: "123"),
            ProductImpl(name: "123", price: 123, imageName: "123", description: "123")
        ]
        return products
    }
}
