//
//  Product.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 09.01.2022.
//

import Foundation

protocol Product {
    var name: String { get }
    var price: Int { get }
    var imageName: String { get }
    var description: String { get }
}

struct ProductImpl: Product {
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
