//
//  Feeling.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 05.01.2022.
//

import Foundation

/// Возможные начинки продуктов
protocol Feeling {
    var title: String { get }
    
    init(title: String)
}

struct FeelingImpl: Feeling {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
