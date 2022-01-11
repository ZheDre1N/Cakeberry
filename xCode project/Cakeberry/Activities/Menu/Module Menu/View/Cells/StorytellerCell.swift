//
//  StorytellerCell.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 04.01.2022.
//

import UIKit
import StorytellerSDK

class StorytellerCell: UICollectionViewCell {
    
    @IBOutlet weak var storytellerRowView: StorytellerRowView!
    
    static let reuseIdentifier = "storytellerCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        fetchStorytellerView()
        customizeStorytellerView()
    }
    
    private func fetchStorytellerView() {
        let uuid = UUID().uuidString
        
        // Storyteller SDK configure. Admin must be replaced by user ID
        let userInput = UserInput(externalId: uuid)
        Storyteller.sharedInstance.initialize(
            apiKey: "1e00f848-ecc0-4550-958b-4b9ec7072b38",
            userInput: userInput,
            onComplete: { () in
                // Do something on completion...
                self.storytellerRowView.reloadData()
                print("Storyteller sdk launched succesfully")
            }, onError: { error in
                // Handle the error
                print("Storyteller sdk error: \(error.localizedDescription)")
            })
    }
    
    private func customizeStorytellerView() {
        storytellerRowView.cellType = StorytellerRowViewCellType.Square.rawValue
    }
}
