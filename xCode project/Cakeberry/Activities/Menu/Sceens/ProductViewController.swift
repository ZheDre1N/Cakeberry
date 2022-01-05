//
//  ProductViewController.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 04.01.2022.
//

import UIKit

class ProductViewController: UIViewController {

    var product: Product! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func toCart(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
