//
//  ContactsPresenter.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 11.01.2022.
//

import Foundation

protocol ContactsViewProtocol: AnyObject {
    
}

protocol ContactsViewPresenterProtocol: AnyObject {
    init(view: ContactsViewProtocol)
}

class ContactsPresenter: ContactsViewPresenterProtocol {
    
    weak var view: ContactsViewProtocol!
    public var coordinator: ContactsCoordinatorProtocol!

    required init(view: ContactsViewProtocol) {
        self.view = view
    }
}
