//
//  ProductSize.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 05.01.2022.
//

import Foundation

/// Возможные размеры продуктов
protocol ProductSize {
    var title: String { get }
    var size: Size { get }
    var price: Float { get }
    var isActive: Bool { get }
    
    init(
        title: String,
        size: Size,
        price: Float,
        isActive: Bool
    )
}

enum Size {
    case small
    case medium
    case big
}

struct ProductSizeImpl: ProductSize {
    var title: String
    var size: Size
    var price: Float
    var isActive: Bool
    
    init(
        title: String,
        size: Size,
        price: Float,
        isActive: Bool
    ) {
        self.title = title
        self.size = size
        self.price = price
        self.isActive = isActive
    }
}
