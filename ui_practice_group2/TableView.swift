//
//  TableView.swift
//  ui_practice_group2
//
//  Created by Александр Беляев on 08.05.2021.
//

import UIKit

class TableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
		cell.textLabel?.text = "Hallo"
		cell.detailTextLabel?.text = " cell"
		cell.imageView?.image = UIImage(systemName: "mail")
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
