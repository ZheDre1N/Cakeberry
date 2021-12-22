//
//  PopularCollectionViewCell.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 21.12.2021.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productContentView: UIView!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        productContentView.layer.cornerRadius = 10
        productImageView.layer.cornerRadius = 10
    }
}
