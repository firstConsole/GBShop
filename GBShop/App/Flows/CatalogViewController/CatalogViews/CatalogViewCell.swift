//
//  CatalogViewCell.swift
//  GBShop
//
//  Created by Алексей Артамонов on 26.02.2023.
//

import UIKit

final class CatalogViewCell: UITableViewCell {
    
    static let identifier: String = "CatalogViewCell"
    
    private lazy var image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle,
                  reuseIdentifier: String?) {
        super.init(style: style,
                   reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
}
