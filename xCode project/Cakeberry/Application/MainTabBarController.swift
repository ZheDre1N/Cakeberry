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
        viewControllers = [menu.navigationController, profile.navigationController, contacts.navigationController, cart.navigationController]
    }
}
