//
//  CollectionView.swift
//  ui_practice_group2
//
//  Created by Александр Беляев on 08.05.2021.
//

import UIKit

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {

	func collectionView(_ collectionView: UICollectionView,
						layout collectionViewLayout: UICollectionViewLayout,
						sizeForItemAt indexPath: IndexPath) -> CGSize {
		
		return CGSize(width: cv.frame.width, height: cv.frame.height)
	}
	
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		print(#function)
	
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		print(#function)

		let cell = cv.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier,
										  for: indexPath) as! CustomCollectionViewCell
//		guard let model = artistSchedule else { return UICollectionViewCell() }
//		cell.label.text = model[indexPath.row].artistName
//		cell.label.text = "jnbhjbjkbj"
		print(artistSchedule)

			cell.label.text = "work"
		
		cell.label.backgroundColor = .blue
		return cell
    }


}
