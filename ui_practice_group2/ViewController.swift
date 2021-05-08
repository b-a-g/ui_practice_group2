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

    var artistSchedule: [ArtistSchedule]?
        
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.artistSchedule?.append(ArtistSchedule(artistName: "Полина Гагарина", schedule: [
                                                    "Новосибирск, Россия" : Date(timeIntervalSince1970: 1622559600000),
                                                    "Воронеж, Россия" : Date(timeIntervalSince1970: 1622905200000)]))
        self.artistSchedule?.append(ArtistSchedule(artistName: "ABBA", schedule: [
                                                    "Москва, Россия" : Date(timeIntervalSince1970: 123)]))
		
        
        self.view.addSubview(cv)
        self.view.addSubview(tv)
		tv.delegate = tv
		tv.dataSource = tv
        
        cv.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.trailing.leading.equalToSuperview()
            make.height.equalTo(self.view.bounds.height / 3)
        }
        
        tv.snp.makeConstraints { (make) in
            make.top.equalTo(cv.snp_bottomMargin).offset(10)
            make.trailing.leading.equalToSuperview()
            make.height.equalTo((self.view.bounds.height / 3) * 2)
        }
        
        cv.backgroundColor = .green
        tv.backgroundColor = .yellow
    }


}

