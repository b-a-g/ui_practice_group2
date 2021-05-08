//
//  CustomCollectionViewCell.swift
//  ui_practice_group2
//
//  Created by Екатерина Григорьева on 08.05.2021.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
	static let identifier = "collectionCell"
		
		var imageView = UIImageView()
		var label = UILabel()
		
		override init(frame: CGRect) {
			super.init(frame: frame)
			
			self.contentView.backgroundColor = .red
			
			setConstraints()
		}
		
		required init?(coder: NSCoder) {
			fatalError("init(coder:) has not been implemented")
		}
		
		private func setConstraints() {
			contentView.addSubview(label)
			print("GGGGG")
			label.backgroundColor = .red
			
			
			label.snp.makeConstraints { make in
				make.bottom.top.right.left.equalToSuperview()
			}
			
	//		imageView.image = UIImage(named: "heart")
		}

}
