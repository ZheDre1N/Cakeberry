//
//  SubCategory.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 05.01.2022.
//

import Foundation

/// Несконфигурированный товар. Пример: торт Красный бархат. Может быть 16см, 18см или 20см. Может быть с вишневой или малиновой начинками.
protocol SubCategory {
    
    /// Название подкатегории.
    var title: String { get }

    /// Описание подкатегории.
    var description: String { get }

    /// Название изображения подкатегории, хранимое в ресурсах проекта.
    var imageName: String { get }

    /// Массив, содержащий возможные размеры продукта подкатегории
    var sizes: [ProductSize] { get }

    /// Массив, содержащий возможные начинки продуктов подкатегории
    var feelings: [Feeling] { get }

    /// Массив, содержащий возможные варианты декора продукта подкатегории
    var decors: [Decor] { get }
    
    init(
        title: String,
        description: String,
        imageName: String,
        sizes: [ProductSize],
        feelings: [Feeling],
        decors: [Decor]
    )
}

struct SubCategoryImpl: SubCategory {
    
    var title: String
    var description: String
    var imageName: String
    var sizes: [ProductSize]
    var feelings: [Feeling]
    var decors: [Decor]
    
    init(
        title: String,
        description: String,
        imageName: String,
        sizes: [ProductSize],
        feelings: [Feeling],
        decors: [Decor]
    ) {
        self.title = title
        self.description = description
        self.imageName = imageName
        self.sizes = sizes
        self.feelings = feelings
        self.decors = decors
    }
}
