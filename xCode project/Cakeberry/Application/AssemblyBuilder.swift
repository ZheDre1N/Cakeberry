//
//  AssemblyBuilder.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 10.01.2022.
//

import UIKit

protocol AssemblyBuilderProtocol {
    // Menu
    func createMenuModule(coordinator: MenuCoordinatorProtocol) -> UIViewController
    func createDetailVC(with product: Product) -> UIViewController
    
    // Profile
    func createProfileModule(coordinator: ProfileCoordinatorProtocol) -> UIViewController

    // Contacts
    func createContactsModule(coordinator: ContactsCoordinatorProtocol) -> UIViewController

    // Cart
    func createCartModule(coordinator: CartCoordinatorProtocol) -> UIViewController
}

class AssemblyBuilder: AssemblyBuilderProtocol {

    // MARK: - Menu.
    func createMenuModule(coordinator: MenuCoordinatorProtocol) -> UIViewController {
        let view = MenuViewController()
        let presenter = MenuPresenter(view: view)
        view.presenter = presenter
        presenter.coordinator = coordinator
        return view
    }
    
    func createDetailVC(with product: Product) -> UIViewController {
        let view = DetailViewController()
        let presenter = DetailPresenter(view: view, product: product)
        view.presenter = presenter
        return view
    }
    
    // MARK: - Profile.
    func createProfileModule(coordinator: ProfileCoordinatorProtocol) -> UIViewController {
        let view = ProfileViewController()
        let presenter = ProfilePresenter(view: view)
        view.presenter = presenter
        presenter.coordinator = coordinator
        return view
    }
    
    // MARK: - Contacts.
    func createContactsModule(coordinator: ContactsCoordinatorProtocol) -> UIViewController {
        let view = ContactsViewController()
        let presenter = ContactsPresenter(view: view)
        view.presenter = presenter
        presenter.coordinator = coordinator
        return view
    }
    // MARK: - Cart.
    func createCartModule(coordinator: CartCoordinatorProtocol) -> UIViewController {
        let view = CartViewController()
        let presenter = CartPresenter(view: view)
        view.presenter = presenter
        presenter.coordinator = coordinator
        return view
    }
}
