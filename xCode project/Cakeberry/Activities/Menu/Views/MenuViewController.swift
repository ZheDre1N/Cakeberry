//
//  MenuViewController.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 16.12.2021.
//

import UIKit
import StorytellerSDK

class MenuViewController: UIViewController {
    
    var coordinator: MenuCoordinator?
    @IBOutlet weak var storytellerRowView: StorytellerRowView!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Меню"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        storytellerRowView.cellType = StorytellerRowViewCellType.Square.rawValue
        storytellerRowView.backgroundColor = UIColor.secondarySystemBackground
        
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
}
