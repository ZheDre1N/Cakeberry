//
//  ProductViewController.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 04.01.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var presenter: DetailViewPresenterProtocol!
    var product: Product!
    private let cake = Product.cheesecake(.d18sm, .berry(.currant))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func toCart(_ sender: UIButton) {
        sendToPresenter(product: cake)
    }
}

extension DetailViewController: DetailViewProtocol {
    func presentProductType(product: Product) {
//        productImageView.image = UIImage(named: product.imageName)
//        nameLabel.text = product.name
//        descriptionLabel.text = product.description
    }
    
    func sendToPresenter(product: Product) {
        presenter.addToCart(product: product)
    }
}
