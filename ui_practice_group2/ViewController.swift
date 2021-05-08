//
//  ViewController.swift
//  ui_practice_group2
//
//  Created by Александр Беляев on 08.05.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
	let cv = CollectionView()
	let tv = TableView()

    var artistSchedule: [ArtistSchedule] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
		
		self.view.backgroundColor = .white
		
        self.artistSchedule.append(ArtistSchedule(artistName: "Полина Гагарина", schedule: [
                                                    "Новосибирск, Россия" : Date(timeIntervalSince1970: 1622559600000),
                                                    "Воронеж, Россия" : Date(timeIntervalSince1970: 1622905200000)]))
        self.artistSchedule.append(ArtistSchedule(artistName: "ABBA", schedule: [
                                                    "Москва, Россия" : Date(timeIntervalSince1970: 123)]))
		artistSchedule.forEach{ artist in
			cv.setData(artist.artistName)
		}
		cv.reloadData()

		setConstraints()
        
        self.cv.currentItem = { [weak self] name in
            self?.updateTable(name: name)
        }
    }

    private func updateTable(name: String) {
        artistSchedule.forEach { artist in
            if name == artist.artistName {
				self.tv.setData(artist.schedule)
            }
        }
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
			make.top.equalTo(cv.snp_bottomMargin).offset(30)
			make.left.equalToSuperview().offset(40)
			make.right.equalToSuperview().offset(-40)
			make.height.equalTo((self.view.bounds.height / 3) * 2)
		}
		
	}

}

