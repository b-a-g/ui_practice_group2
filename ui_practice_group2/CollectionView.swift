//
//  CollectionView.swift
//  ui_practice_group2
//
//  Created by Александр Беляев on 08.05.2021.
//

import UIKit

class CollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
	
	var data: [String] = []
	
	func setData(_ data: String) {
		self.data.append(data)
	}
	
    init() {
        let layout = UICollectionViewFlowLayout()
		layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0

		super.init(frame: .infinite, collectionViewLayout: layout)

		self.delegate = self
		self.dataSource = self
		
		self.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
		self.isScrollEnabled = true
		self.showsHorizontalScrollIndicator = true
		self.translatesAutoresizingMaskIntoConstraints = false
		self.isPagingEnabled = true
		self.isScrollEnabled = true

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
	
	func collectionView(_ collectionView: UICollectionView,
						layout collectionViewLayout: UICollectionViewLayout,
						sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: self.frame.width, height: self.frame.height)

	}
	
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
		guard let collectionCell = cell else { return UICollectionViewCell() }
		collectionCell.artistName.text = data[indexPath.row]
		collectionCell.backgroundColor = .blue
		return collectionCell
    }


}
