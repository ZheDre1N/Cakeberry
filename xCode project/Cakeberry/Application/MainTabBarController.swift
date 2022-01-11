//
//  MainTabBarController.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 19.12.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
       
    let menu = MenuCoordinator()
    let profile = ProfileCoordinator()
    let contacts = ContactsCoordinator()
    let cart = CartCoordinator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [
            menu.navigationController,
            profile.navigationController,
            contacts.navigationController,
            cart.navigationController]
        
        configureTabBars()
    }
    
    private func configureTabBars() {
        menu.navigationController.tabBarItem = UITabBarItem(title: "Меню", image: UIImage(systemName: "menucard"), tag: 0)
        menu.navigationController.tabBarItem.selectedImage = UIImage(systemName: "menucard.fill")
        
        profile.navigationController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), tag: 1)
        profile.navigationController.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        contacts.navigationController.tabBarItem = UITabBarItem(title: "Контакты", image: UIImage(systemName: "mail"), tag: 2)
        contacts.navigationController.tabBarItem.selectedImage = UIImage(systemName: "mail.fill")
        
        cart.navigationController.tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(systemName: "cart"), tag: 3)
        cart.navigationController.tabBarItem.badgeValue = "2"
        cart.navigationController.tabBarItem.badgeColor = .main5
        cart.navigationController.tabBarItem.selectedImage = UIImage(systemName: "cart.fill")
    }
}
