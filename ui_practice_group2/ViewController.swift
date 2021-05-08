//
//  ViewController.swift
//  ui_practice_group2
//
//  Created by Александр Беляев on 08.05.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let cv = CollectionView()
        let tv = TableView()
        
        self.view.addSubview(cv)
        self.view.addSubview(tv)
        
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

