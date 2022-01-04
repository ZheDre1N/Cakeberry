//
//  Category.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 03.01.2022.
//

import Foundation

struct Category {
    var title: String
}

extension Category {
    static func testData() -> [Category] {
        let category1 = Category(title: "Торты")
        let category2 = Category(title: "Чизкейки")
        let category3 = Category(title: "Капкейки")
        let category4 = Category(title: "Кейк попсы")
        let category5 = Category(title: "Трайфлы")
        let category6 = Category(title: "Напитки")
        
        return [category1, category2, category3, category4, category5, category6]
    }
}
