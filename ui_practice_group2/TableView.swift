//
//  TableView.swift
//  ui_practice_group2
//
//  Created by Александр Беляев on 08.05.2021.
//

import UIKit

class TableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
	var data: [String: Date] = [:]
    
    func setData(_ data: [String: Date]) {
        self.data = data
    }
	
	init() {
		print("table")

	
		super.init(frame: .zero, style: .plain)
		
		self.delegate = self
		self.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)

	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if let data = self.data {
//            return data.count
//        } else {
//            return 0
//        }
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell
		//let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
		cell.cityLabel.text = "Hallo"
//		cell.textLabel?.text = "Hallo"
//		cell.detailTextLabel?.text = " cell"
		//cell.imageView?.image = UIImage(systemName: "mail")
		//cell.largeContentImage = UIImage(systemName: "mail")
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
