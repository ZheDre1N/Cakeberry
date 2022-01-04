//
//  Popular.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 03.01.2022.
//

import Foundation

struct Popular {
    var title: String
    var price: String
    var imageName: String
}

extension Popular {
    static func testData() -> [Popular] {
        let popular1 = Popular(title: "Kотлетки рубленные", price: "550", imageName: "p1")
        let popular2 = Popular(title: "Красный бархат", price: "2200", imageName: "p2")
        let popular3 = Popular(title: "Мороженка", price: "650", imageName: "p3")

        return [popular1, popular2, popular3, popular2, popular3]
    }
}
