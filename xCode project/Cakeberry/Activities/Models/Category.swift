//
//  Category.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 05.01.2022.
//

import Foundation

/// Категория продуктов. Пример: Торты.
protocol Category {
    var title: String { get }
    var subCategories: [SubCategory] { get }
    
    init(title: String, subCategories: [SubCategory])
}
 
struct CategoryImpl: Category {
    var title: String
    var subCategories: [SubCategory]
    
    init(title: String, subCategories: [SubCategory]) {
        self.title = title
        self.subCategories = subCategories
    }
}
