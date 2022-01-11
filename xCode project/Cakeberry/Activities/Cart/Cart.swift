//
//  Cart.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 05.01.2022.
//

import Foundation

/// Корзина, содержащая все добавленные пользователем продукты.
protocol Cart {
    
    /// Корзина покупок
    var cart: [Product] { get set }
    
    /// Добавить товар в корзину
    mutating func addToCart(product: Product)
    
    /// Удалить товар из корзину
    mutating func deleteFromCart(product: Product)
}

/// Реализация протокола Cart
struct CartImpl: Cart {
    var cart: [Product] = []
    
    mutating func addToCart(product: Product) {
        cart.append(product)
    }
    
    mutating func deleteFromCart(product: Product) {
    }
}
