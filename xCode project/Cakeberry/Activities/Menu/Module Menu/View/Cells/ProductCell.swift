//
//  CakeCell.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 02.01.2022.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    static let reuseIdentifier = "productCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with product: Product) {
        titleLabel.text = product.title
        descriptionLabel.text = product.title
        priceLabel.text = String(product.minPrice)
        imageView.image = UIImage(named: product.imageName)
    }
    
}
