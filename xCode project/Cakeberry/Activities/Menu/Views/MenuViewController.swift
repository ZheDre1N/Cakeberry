//
//  MenuViewController.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 16.12.2021.
//

import UIKit
import StorytellerSDK

class MenuViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var storytellerRowView: StorytellerRowView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    var coordinator: MenuCoordinator?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Меню"
        popularCollectionView.register(UINib(nibName: "PopularCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "popularCollectionViewCell")
        popularCollectionView.delegate = self
        popularCollectionView.dataSource = self
        popularCollectionView.showsHorizontalScrollIndicator = false
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

extension MenuViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 244, height: 96)
    }
}

extension MenuViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "popularCollectionViewCell",
            for: indexPath) as? PopularCollectionViewCell
        else {
            return UICollectionViewCell()
        }
        return cell
    }
}
