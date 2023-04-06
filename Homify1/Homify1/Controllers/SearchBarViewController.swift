//
//  SearchBarViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 27/02/23.
//

import UIKit

class SearchBarViewController: UIViewController {
                
    
    
    private let searchResultsCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width/3 - 10, height: 200)
        layout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(TitleCollectionViewCell.self, forCellWithReuseIdentifier: TitleCollectionViewCell.identifier)
        return collectionView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(searchResultsCollectionView)
        searchResultsCollectionView.dataSource = self
        searchResultsCollectionView.delegate = self
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        searchResultsCollectionView.frame = view.bounds
        
    }
    

   

}

extension SearchBarViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCollectionViewCell.identifier, for: indexPath) as? TitleCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.backgroundColor = .systemGray2
        return cell
    }
}
