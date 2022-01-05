//
//  Product.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 05.01.2022.
//

import Foundation

/// Сконфигурированный товар. Пример: Торт Красный бархат, 18см, с вишневой начинкой.
protocol Product {
    
    /// Название продукта.
    var name: String { get }
    
    /// Выбранный размер продукта
    var size: ProductSize { get }
    
    /// Выбранная начинка продукта
    var feelings: Feeling { get }
    
    /// Выбранный декор продукта
    var decors: Decor { get }
    
    init(
        name: String,
        size: ProductSize,
        feelings: Feeling,
        decors: Decor
    )
}

struct ProductImpl: Product {
    var name: String
    var size: ProductSize
    var feelings: Feeling
    var decors: Decor
    
    init(
        name: String,
        size: ProductSize,
        feelings: Feeling,
        decors: Decor
    ) {
        self.name = name
        self.size = size
        self.feelings = feelings
        self.decors = decors
    }
}
