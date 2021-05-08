//
//  TableView.swift
//  ui_practice_group2
//
//  Created by Александр Беляев on 08.05.2021.
//

import UIKit

class TableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
	var data: [String: Date] = [:]
	var keyData : [String] = []
	var valueData : [String] = []
	

    
    func setData(_ data: [String: Date]) {
        self.data = data
		keyData = []
		valueData = []
		let formatter = DateFormatter()
		formatter.dateStyle = .short
		
		
		for (key, value) in data {
			keyData.append(key)
			valueData.append(formatter.string(from: value))
		}
		reloadData()
	
    }
	
	init() {
		print("table")
		
		super.init(frame: .zero, style: .plain)
		self.delegate = self
		self.dataSource = self
		self.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
		self.rowHeight = 90
		self.separatorStyle = .none
	
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
    
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.count
	}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell
		
		cell.backgroundColor = .blue
		let city = keyData[indexPath.row]
		let time = valueData[indexPath.row]
		cell.cityLabel.text = city
	
		cell.timeLabel.text = time
		
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

extension Date {
	var millisecondsSince1970:Int64 {
		return Int64((self.timeIntervalSince1970 * 1000.0).rounded())
	}

	init(milliseconds:Int64) {
		self = Date(timeIntervalSince1970: TimeInterval(milliseconds) / 1000)
	}
}
