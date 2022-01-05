//
//  Product.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 05.01.2022.
//

import Foundation

/// Сконфигурированный товар. Пример: Торт Красный бархат, 18см, с вишневой начинкой.
protocol Product {
    
    /// Ссылка на подкатегорию продукта. Должна быть weak.
    var сategory: Category { get }
    
    /// Название товара.
    var name: String { get }

    /// Выбранный размер товара
    var sizes: ProductSize { get }

    /// Выбранная начинка товара
    var feelings: Feeling { get }

    /// Выбранный декор продукта
    var decors: Decor { get }
}
