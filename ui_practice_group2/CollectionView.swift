//
//  CollectionView.swift
//  ui_practice_group2
//
//  Created by Александр Беляев on 08.05.2021.
//

import UIKit

class CollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate {
	
	private var model = ViewController().artistSchedule
	
    init() {
		print("Collection")
//		collectionView.delegate = self
//
        let layout = UICollectionViewFlowLayout()
		layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
//		layout.itemSize = CGSize(width: self.frame.width, height: self.frame.height)

		super.init(frame: .zero, collectionViewLayout: layout)

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
		print(#function)
	
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		print(#function)

		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
		cell.label.text = model?.first?.artistName
//		cell.backgroundColor = .blue
		return cell
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
