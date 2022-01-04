//
//  Product.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 03.01.2022.
//

import Foundation

struct Product {
    var title: String
    var price: String
    var imageName: String
    var description: String
}

extension Product {
    static func testData() -> [Product] {
        let product1 = Product(title: "Рубленные котлетки", price: "550", imageName: "p1", description: "Шикарные котлетки от лучшего шеф-повара поволжья")
        let product2 = Product(title: "Красный бархат", price: "2200", imageName: "p2", description: "Нежнейший тортик с натуральными ингредиентами")
        let product3 = Product(title: "Мороженка", price: "650", imageName: "p3", description: "Какая-то мороженка из интернета")

        return [product1, product2, product3, product1, product2, product3, product1, product2, product3]
    }
}
