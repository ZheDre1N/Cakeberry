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
        
        let vc = ProfileViewController()
        vc.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "character.bubble"), tag: 0)
        vc.coordinator = self
        
        navigationController.viewControllers = [vc]
    }
}
