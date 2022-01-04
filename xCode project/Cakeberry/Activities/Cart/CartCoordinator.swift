//
//  CartCoordinator.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 20.12.2021.
//

import UIKit

class CartCoordinator: Coordinator {
    
    var navigationController: CoordinatedNavigationController
    
    init(navigationController: CoordinatedNavigationController = CoordinatedNavigationController()) {
        self.navigationController = navigationController
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.coordinator = self
        
        let initialVC = CartViewController()
        initialVC.tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(systemName: "cart"), tag: 3)
        initialVC.tabBarItem.badgeValue = "2"
        initialVC.tabBarItem.badgeColor = .main5
        initialVC.tabBarItem.selectedImage = UIImage(systemName: "cart.fill")
        initialVC.coordinator = self
        
        navigationController.viewControllers = [initialVC]
    }
}
