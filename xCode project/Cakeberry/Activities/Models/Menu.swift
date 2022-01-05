//
//  Menu.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 05.01.2022.
//

import Foundation

/// Полное меню. Конфигурируется и обновляется на сервере
protocol Menu {
    var categories: [Category] { get }
}
