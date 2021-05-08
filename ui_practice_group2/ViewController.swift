//
//  ViewController.swift
//  ui_practice_group2
//
//  Created by Александр Беляев on 08.05.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
	let cv: UICollectionView = {
		let layout = UICollectionViewFlowLayout()
		layout.scrollDirection = .horizontal
		layout.minimumLineSpacing = 0
		layout.minimumInteritemSpacing = 0
//		layout.itemSize = CGSize(width: self.frame.width, height: self.frame.height)

		let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
		collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
		collectionView.isScrollEnabled = true
		collectionView.showsHorizontalScrollIndicator = true
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		collectionView.isPagingEnabled = true
		collectionView.isScrollEnabled = true
		return collectionView
	}()
	
	let tv = TableView()

    var artistSchedule: [ArtistSchedule]?
        
    override func viewDidLoad() {
        super.viewDidLoad()
		
		cv.delegate = self
		cv.dataSource = self
        
        self.artistSchedule?.append(ArtistSchedule(artistName: "Полина Гагарина", schedule: [
                                                    "Новосибирск, Россия" : Date(timeIntervalSince1970: 1622559600000),
                                                    "Воронеж, Россия" : Date(timeIntervalSince1970: 1622905200000)]))
        self.artistSchedule?.append(ArtistSchedule(artistName: "ABBA", schedule: [
                                                    "Москва, Россия" : Date(timeIntervalSince1970: 123)]))
		setConstraints()
        
        
        cv.backgroundColor = .green
        tv.backgroundColor = .yellow
    }


	private func setConstraints() {
		self.view.addSubview(cv)
		self.view.addSubview(tv)
		
		cv.snp.makeConstraints { (make) in
			make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(25)
			make.left.equalToSuperview().offset(40)
			make.right.equalToSuperview().offset(-40)

			make.height.equalTo(self.view.bounds.height / 3)
		}
		
		tv.snp.makeConstraints { (make) in
			make.top.equalTo(cv.snp_bottomMargin).offset(10)
			make.trailing.leading.equalToSuperview()
			make.height.equalTo((self.view.bounds.height / 3) * 2)
		}
		
	}

}

