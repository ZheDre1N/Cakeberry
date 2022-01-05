//
//  MenuCoordinator.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 19.12.2021.
//

import UIKit

class MenuCoordinator: Coordinator {
    
    var navigationController: CoordinatedNavigationController
    
    init(navigationController: CoordinatedNavigationController = CoordinatedNavigationController()) {
        self.navigationController = navigationController
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.coordinator = self
        
        let initialVC = MenuViewController()
        initialVC.tabBarItem = UITabBarItem(title: "Меню", image: UIImage(systemName: "menucard"), tag: 0)
        initialVC.tabBarItem.selectedImage = UIImage(systemName: "menucard.fill")
        initialVC.coordinator = self
        
        navigationController.viewControllers = [initialVC]
    }
    
    func goToProductVC(from vc: UIViewController, with product: Product) {
        let destination = ProductViewController()
        vc.present(destination, animated: true, completion: nil)
    }
}
