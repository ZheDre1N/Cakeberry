//
//  ProfilePresenter.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 11.01.2022.
//

import Foundation

protocol ProfileViewProtocol: AnyObject {
    
}

protocol ProfileViewPresenterProtocol: AnyObject {
    init(view: ProfileViewProtocol)
}

class ProfilePresenter: ProfileViewPresenterProtocol {
    
    weak var view: ProfileViewProtocol!
    public var coordinator: ProfileCoordinatorProtocol!

    required init(view: ProfileViewProtocol) {
        self.view = view
    }
}
