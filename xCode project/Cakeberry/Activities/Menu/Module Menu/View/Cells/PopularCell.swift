//
//  PopularCollectionViewCell.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 21.12.2021.
//

import UIKit

class PopularCell: UICollectionViewCell {
    
    @IBOutlet weak var productContentView: UIView!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    static let reuseIdentifier = "popularCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with title: String, imageName: String, price: String) {
        productNameLabel.text = title
        productPriceLabel.text = price
        productImageView.image = UIImage(named: imageName)
    }
}
