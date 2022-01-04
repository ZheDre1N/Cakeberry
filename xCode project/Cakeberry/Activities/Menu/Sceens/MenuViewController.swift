//
//  MenuVC.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 02.01.2022.
//

import UIKit

class MenuViewController: UIViewController {
    
    var coordinator: MenuCoordinator?
    var collectionView: UICollectionView! = nil
    
    var dataSource: UICollectionViewDiffableDataSource<Section, Int>! = nil
    
    enum Section: Int, CaseIterable {
        case story
        case popular
        case category
        case product
    }
    
    // MARK: - Private properties.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Меню"
        
        configureHierarchy()
        configureDataSource()
    }
    
    private func createLayout() -> UICollectionViewLayout {
        let sectionProvider: UICollectionViewCompositionalLayoutSectionProvider = { (sectionIndex, layoutEnvironment) -> NSCollectionLayoutSection? in
            guard let sectionKind = Section(rawValue: sectionIndex) else { return nil }
            let section = self.layoutSection(for: sectionKind, layoutEnvironment: layoutEnvironment)
            return section
        }
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.interSectionSpacing = 16.0
        let layout = UICollectionViewCompositionalLayout(sectionProvider: sectionProvider, configuration: config)
        return layout
    }
    
    private func configureHierarchy() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .secondarySystemBackground
        let nib1 = UINib(nibName: "StorytellerCell", bundle: nil)
        collectionView.register(nib1, forCellWithReuseIdentifier: StorytellerCell.reuseIdentifier)
        let nib2 = UINib(nibName: "PopularCell", bundle: nil)
        collectionView.register(nib2, forCellWithReuseIdentifier: PopularCell.reuseIdentifier)
        let nib3 = UINib(nibName: "CategoryCell", bundle: nil)
        collectionView.register(nib3, forCellWithReuseIdentifier: CategoryCell.reuseIdentifier)
        let nib4 = UINib(nibName: "ProductCell", bundle: nil)
        collectionView.register(nib4, forCellWithReuseIdentifier: ProductCell.reuseIdentifier)
        view.addSubview(collectionView)
    }
    
    private var popular: [Popular] = Popular.testData()
    private var categories: [Category] = Category.testData()
    private var products: [Product] = Product.testData()
    
    private lazy var storytellerRange: ClosedRange<Int> = 1...1
    private lazy var popularRange: ClosedRange<Int> = (storytellerRange.upperBound + 1)...(storytellerRange.upperBound + popular.count)
    private lazy var categoriesRange: ClosedRange<Int> = (popularRange.upperBound + 1)...(popularRange.upperBound + categories.count)
    private lazy var productsRange: ClosedRange<Int> = (categoriesRange.upperBound + 1)...(categoriesRange.upperBound + products.count)
    
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, Int>(collectionView: collectionView)
        { (collectionView: UICollectionView, indexPath: IndexPath, identifier: Int) -> UICollectionViewCell? in
            
            if self.storytellerRange ~= identifier {
                guard let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: StorytellerCell.reuseIdentifier,
                    for: indexPath) as? StorytellerCell else
                    { fatalError("Cannot create the cell") }
                return cell
            }
            
            if self.popularRange ~= identifier {
                guard let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: PopularCell.reuseIdentifier, for: indexPath) as? PopularCell else { fatalError("Cannot create the cell") }
                let popularItem = self.popular[indexPath.row]
                cell.configure(with: popularItem.title, imageName: popularItem.imageName, price: popularItem.price)
                return cell
            }
            
            if self.categoriesRange ~= identifier {
                guard let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: CategoryCell.reuseIdentifier, for: indexPath) as? CategoryCell else { fatalError("Cannot create the cell") }
                let category = self.categories[indexPath.row]
                cell.configure(with: category.title)
                return cell
            }
            
            if self.productsRange ~= identifier {
                guard let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: ProductCell.reuseIdentifier,
                    for: indexPath) as? ProductCell else {
                        fatalError("Cannot create the cell")
                    }
                let product = self.products[indexPath.row]
                cell.configure(with: product.title, description: product.description, imageName: product.imageName, price: product.price)
                return cell
            }
            
            fatalError("Cannot create the cell")
        }
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Int>()
        let sections: [Section] = [.story, .popular, .category, .product]
        snapshot.appendSections([sections[0]])
        snapshot.appendItems(Array(storytellerRange))
        snapshot.appendSections([sections[1]])
        snapshot.appendItems(Array(popularRange))
        snapshot.appendSections([sections[2]])
        snapshot.appendItems(Array(categoriesRange))
        snapshot.appendSections([sections[3]])
        snapshot.appendItems(Array(productsRange))
        dataSource.apply(snapshot, animatingDifferences: false)
    }
    
    private func layoutSection(for section: Section, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        switch section {
        case .story:
            return storytellerSection()
        case .popular:
            return popularSection()
        case .category:
            return categoriesSection()
        case .product:
            return productsSection()
        }
    }
    
    private func storytellerSection() -> NSCollectionLayoutSection {
        
        // Config item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // Config group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(160))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        // Config section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .none
        return section
    }
    
    private func popularSection() -> NSCollectionLayoutSection {
        
        // Config item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // Config group
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(240), heightDimension: .absolute(100))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = .init(top: 0.0, leading: 8.0, bottom: 0.0, trailing: 8.0)
        
        // Config section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        return section
    }
    
    private func categoriesSection() -> NSCollectionLayoutSection {
        
        // Config item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // Config group
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(150), heightDimension: .absolute(30))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = .init(top: 0.0, leading: 8.0, bottom: 0.0, trailing: 8.0)
        
        // Config section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        return section
    }
    
    private func productsSection() -> NSCollectionLayoutSection {
        
        // Config item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // Config group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(160))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        group.contentInsets = .init(top: 0.0, leading: 8.0, bottom: 8.0, trailing: 8.0)
        
        // Config section
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
}