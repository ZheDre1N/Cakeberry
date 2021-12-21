//
//  ContactsCoordinator.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 20.12.2021.
//

import UIKit

class ContactsCoordinator: Coordinator {
    
    var navigationController: CoordinatedNavigationController
    
    init(navigationController: CoordinatedNavigationController = CoordinatedNavigationController()) {
        self.navigationController = navigationController
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.coordinator = self
        
        let initialVC = ContactsViewController()
        initialVC.tabBarItem = UITabBarItem(title: "Контакты", image: UIImage(systemName: "mail"), tag: 2)
        initialVC.tabBarItem.selectedImage = UIImage(systemName: "mail.fill")
        initialVC.coordinator = self
        
        navigationController.viewControllers = [initialVC]
    }
}
