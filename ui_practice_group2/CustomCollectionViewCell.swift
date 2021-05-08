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
	
	var artistName: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 40, weight: .heavy)
		label.lineBreakMode = .byWordWrapping
		label.textAlignment = .center
		label.numberOfLines = 0
		label.textColor = .white
		return label
	}()
		
		override init(frame: CGRect) {
			super.init(frame: frame)
						
			setConstraints()
		}
		
		required init?(coder: NSCoder) {
			fatalError("init(coder:) has not been implemented")
		}
		
		private func setConstraints() {
			contentView.addSubview(artistName)

			artistName.snp.makeConstraints { make in
				make.left.equalToSuperview().offset(20)
				make.right.equalToSuperview().offset(-20)
				make.centerY.equalToSuperview().offset(50)
			}
		}

}
