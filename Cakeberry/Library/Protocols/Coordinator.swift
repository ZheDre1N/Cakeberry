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

// class SceneDelegate: UIResponder, UIWindowSceneDelegate {
//
//    var window: UIWindow?
//
//    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
//        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
//        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
//        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
//        guard let windowScene = (scene as? UIWindowScene) else { return }
//
//        // Declaration ViewControllers.
//        let menuVC = MenuViewController()
//        let profileVC = ProfileViewController()
//        let contactsVC = ContactsViewController()
//        let cartVC = CartViewController()
//
//        // Creating Navigation View Controllers.
//        let navigationMenuVC = UINavigationController(rootViewController: menuVC)
//        let navigationProfileVC = UINavigationController(rootViewController: profileVC)
//        let navigationContactsVC = UINavigationController(rootViewController: contactsVC)
//        let navigationCartVC = UINavigationController(rootViewController: cartVC)
//
//        let tabBarViewControllers = [navigationMenuVC, navigationProfileVC, navigationContactsVC, navigationCartVC]
//
//        // Creating a TabBarController.
//        let tabBarVC = UITabBarController()
//        tabBarVC.setViewControllers(tabBarViewControllers, animated: true)
//
//        // Configure icons and tab names.
//        if let tabBarItem0 = tabBarVC.tabBar.items?[0] {
//            tabBarItem0.title = "Меню"
//            tabBarItem0.image = UIImage(systemName: "character.bubble")
//            tabBarItem0.selectedImage = UIImage(systemName: "character.bubble.fill")
//        }
//        if let tabBarItem1 = tabBarVC.tabBar.items?[1] {
//            tabBarItem1.title = "Профиль"
//            tabBarItem1.image = UIImage(systemName: "character.bubble")
//            tabBarItem1.selectedImage = UIImage(systemName: "character.bubble.fill")
//        }
//        if let tabBarItem2 = tabBarVC.tabBar.items?[2] {
//            tabBarItem2.title = "Контакты"
//            tabBarItem2.image = UIImage(systemName: "character.bubble")
//            tabBarItem2.selectedImage = UIImage(systemName: "character.bubble.fill")
//        }
//        if let tabBarItem3 = tabBarVC.tabBar.items?[3] {
//            tabBarItem3.title = "Корзина"
//            tabBarItem3.image = UIImage(systemName: "character.bubble")
//            tabBarItem3.selectedImage = UIImage(systemName: "character.bubble.fill")
//        }
//
//        // Configure a window.
//        window = UIWindow(frame: UIScreen.main.bounds)
//        window?.windowScene = windowScene
//        window?.rootViewController = tabBarVC
//        window?.makeKeyAndVisible()
//    }
// }
