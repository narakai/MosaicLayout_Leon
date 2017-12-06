//
//  CustomCollectionCell.swift
//  MosaicLayout
//
//  Created by baiwei－mac on 16/12/26.
//  Copyright © 2016年 YuHua. All rights reserved.
//

import UIKit

class CustomCollectionCell: UICollectionViewCell {

    let title: UILabel = {
        let title = UILabel()
        title.textColor = .white
        title.font = UIFont.systemFont(ofSize: 12)
        return title
    }()
    let imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(title)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
        title.frame = CGRect(x: frame.width - 40, y: frame.height - 20, width: 40, height: 20)
    }
}
