//
//  ProfileCoordinator.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 19.12.2021.
//

import UIKit

class ProfileCoordinator: Coordinator {
    
    var navigationController: CoordinatedNavigationController
    
    init(navigationController: CoordinatedNavigationController = CoordinatedNavigationController()) {
        self.navigationController = navigationController
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.coordinator = self
        
        let initialVC = ProfileViewController()
        initialVC.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), tag: 1)
        initialVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        initialVC.coordinator = self
        
        navigationController.viewControllers = [initialVC]
    }
}
