//
//  Coordinator.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 16.12.2021.
//

import UIKit

/// Used to dictate the basics of all coordinators in the app.
protocol Coordinator: AnyObject {
    var navigationController: CoordinatedNavigationController { get set }
}
