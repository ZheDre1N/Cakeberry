//
//  ContactsCoordinator.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 20.12.2021.
//

import UIKit

protocol ContactsCoordinatorProtocol: CoordinatorProtocol {
}

class ContactsCoordinator: ContactsCoordinatorProtocol {
    
    var navigationController: CoordinatedNavigationController
    
    init(navigationController: CoordinatedNavigationController = CoordinatedNavigationController()) {
        self.navigationController = navigationController
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.coordinator = self
        
        let initialVC = ContactsViewController()

        initialVC.coordinator = self
        
        navigationController.viewControllers = [initialVC]
    }
}
