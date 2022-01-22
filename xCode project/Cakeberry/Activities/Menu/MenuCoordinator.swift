//
//  MenuCoordinator.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 19.12.2021.
//

import UIKit

protocol MenuCoordinatorProtocol: CoordinatorProtocol {
    init(navigationController: CoordinatedNavigationController)
    func showDetailVC(with product: Product)
}

class MenuCoordinator: MenuCoordinatorProtocol {
    
    var navigationController: CoordinatedNavigationController
    let assemblyBuilder = AssemblyBuilder()
    
    required init(navigationController: CoordinatedNavigationController = CoordinatedNavigationController()) {
        self.navigationController = navigationController
        let view = assemblyBuilder.createMenuModule(coordinator: self)
        view.navigationController?.navigationBar.prefersLargeTitles = true
        navigationController.viewControllers = [view]
    }
    
    func showDetailVC(with product: Product) {
        let detailVC = assemblyBuilder.createDetailVC(with: product)
        navigationController.pushViewController(detailVC, animated: true)
//        detailVC.present(detailVC, animated: true, completion: nil)
    }
}
