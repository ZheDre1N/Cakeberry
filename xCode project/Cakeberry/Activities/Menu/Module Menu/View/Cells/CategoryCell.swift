//
//  CategoryCell.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 03.01.2022.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    static let reuseIdentifier = "categoryCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with title: String) {
        titleLabel.text = title
    }
}
