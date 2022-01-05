//
//  Decor.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 05.01.2022.
//

import Foundation

/// Возможные варианты декора продуктов
protocol Decor {
    var title: String { get }
    var price: Float { get }
    var imageName: String { get }
    init(
        title: String,
        price: Float,
        imageName: String
    )
}

struct DecorImpl: Decor {
    var title: String
    var price: Float
    var imageName: String
    
    init(
        title: String,
        price: Float,
        imageName: String
    ) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
