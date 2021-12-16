//
//  SceneDelegate.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 16.12.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Declaration ViewControllers.
        let menuVC = MenuViewController()
        let profileVC = ProfileViewController()
        let contactsVC = ContactsViewController()
        let cartVC = CartViewController()

        // Creating Navigation View Controllers.
        let navigationMenuVC = UINavigationController(rootViewController: menuVC)
        let navigationProfileVC = UINavigationController(rootViewController: profileVC)
        let navigationContactsVC = UINavigationController(rootViewController: contactsVC)
        let navigationCartVC = UINavigationController(rootViewController: cartVC)

        let tabBarViewControllers = [navigationMenuVC, navigationProfileVC, navigationContactsVC, navigationCartVC]
        
        // Creating a TabBarController.
        let tabBarVC = UITabBarController()
        tabBarVC.setViewControllers(tabBarViewControllers, animated: true)

        // Configure icons and tab names.
        if let tabBarItem0 = tabBarVC.tabBar.items?[0] {
            tabBarItem0.title = "Меню"
            tabBarItem0.image = UIImage(systemName: "character.bubble")
            tabBarItem0.selectedImage = UIImage(systemName: "character.bubble.fill")
        }
        if let tabBarItem1 = tabBarVC.tabBar.items?[1] {
            tabBarItem1.title = "Профиль"
            tabBarItem1.image = UIImage(systemName: "character.bubble")
            tabBarItem1.selectedImage = UIImage(systemName: "character.bubble.fill")
        }
        if let tabBarItem2 = tabBarVC.tabBar.items?[2] {
            tabBarItem2.title = "Контакты"
            tabBarItem2.image = UIImage(systemName: "character.bubble")
            tabBarItem2.selectedImage = UIImage(systemName: "character.bubble.fill")
        }
        if let tabBarItem3 = tabBarVC.tabBar.items?[3] {
            tabBarItem3.title = "Корзина"
            tabBarItem3.image = UIImage(systemName: "character.bubble")
            tabBarItem3.selectedImage = UIImage(systemName: "character.bubble.fill")
        }
        
        // Configure a window.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

