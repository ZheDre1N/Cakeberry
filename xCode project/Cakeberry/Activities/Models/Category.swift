//
//  Category.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 05.01.2022.
//

import Foundation

/// Категория товаров. Пример: Чизкейки.
protocol Category {
    var title: String { get }
    var subCategories: [SubCategory] { get }
}
