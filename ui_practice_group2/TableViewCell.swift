//
//  TableViewCell.swift
//  ui_practice_group2
//
//  Created by Никита on 08.05.2021.
//
import UIKit
import SnapKit



class TableViewCell: UITableViewCell {
	
	static let identifier = "tableCell"
	//let img = UIImageView()
	let cityLabel = UILabel()
	let timeLabel = UILabel()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		
		self.layer.cornerRadius = 10
		self.clipsToBounds = true
		setConstraints()
		
		[cityLabel,timeLabel].forEach { label in
			label.textColor = .white
			label.font = UIFont.systemFont(ofSize: 20)
		}
		
	}

	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setConstraints() {
	
		self.addSubview(cityLabel)
		self.cityLabel.snp.makeConstraints{ make in
			make.center.equalToSuperview()
		}
		
		self.addSubview(timeLabel)
		self.timeLabel.snp.makeConstraints{ make in
			make.top.equalTo(cityLabel.snp.bottom).offset(8)
			make.centerX.equalToSuperview()
		}
	}

	
//
//	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//		   super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//		contentView.addSubview(cityLabel)
//		//contentView.addSubview(timeLabel)
//		//contentView.addSubview(img)
//		// Initialization code
//
//		cityLabel.translatesAutoresizingMaskIntoConstraints = false
//		cityLabel.font = UIFont.systemFont(ofSize: 20)
//
//		NSLayoutConstraint.activate([
//			cityLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
//			cityLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
//			cityLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//			cityLabel.heightAnchor.constraint(equalToConstant: 50)
//				])
//	}
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//
//
//
//    }
//
//	required init?(coder aDecoder: NSCoder) {
//			fatalError("init(coder:) has not been implemented")
//		}
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
