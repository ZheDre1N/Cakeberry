//
//  ContactsViewController.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 16.12.2021.
//

import UIKit

class ContactsViewController: UIViewController {
    
    var presenter: ContactsViewPresenterProtocol!
    var coordinator: ContactsCoordinatorProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Контакты"
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ContactsViewController: ContactsViewProtocol {
}
