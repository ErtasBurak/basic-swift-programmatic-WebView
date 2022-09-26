//
//  VerticalCollectionViewCell.swift
//  basic-swift-programmatically-WebView
//
//  Created by Burak Ertaş on 26.09.2022.
//

import UIKit

class VerticalViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    let title = UILabel()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupUI()
    }
    
    override func awakeFromNib() {
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        setDefaultSize(view: contentView)
        
        contentView.backgroundColor = .black
        imageView.frame = CGRect(x: 0.05 * screenWidth, y: 0.05 * screenWidth, width: 0.9 * screenWidth, height: 0.9 * screenWidth)
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "leon")
        contentView.addSubview(imageView)
             
        title.createLabel(view: contentView, textColor: .white, y: imageView.frame.maxY + 0.005 * screenHeight)
  
    }
    
}
