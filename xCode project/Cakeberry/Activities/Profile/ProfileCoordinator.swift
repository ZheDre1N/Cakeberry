//
//  ProfileCoordinator.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 19.12.2021.
//

import UIKit

protocol ProfileCoordinatorProtocol: CoordinatorProtocol {
}

class ProfileCoordinator: CoordinatorProtocol {
    
    var navigationController: CoordinatedNavigationController
    
    init(navigationController: CoordinatedNavigationController = CoordinatedNavigationController()) {
        self.navigationController = navigationController
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.coordinator = self
        
        let initialVC = ProfileViewController()
//        initialVC.coordinator = self
        
        navigationController.viewControllers = [initialVC]
    }
}
