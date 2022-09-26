//
//  DetailCollectionViewCell.swift
//  basic-swift-programmatically-WebView
//
//  Created by Burak Ertaş on 26.09.2022.
//

import UIKit

class DetailPageCell: UICollectionViewCell {
    
    let title = UILabel()
    let descButton = UIButton()
    
    
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
        
        contentView.backgroundColor = .systemCyan
        
        title.frame = CGRect(x: screenWidth * 0.1, y: screenHeight * 0.1, width: screenWidth * 0.4, height: screenWidth * 0.2)
        title.numberOfLines = 0
        title.textColor = .red
        
        contentView.addSubview(title)
        
        descButton.frame = CGRect(x: screenWidth * 0.6, y: screenHeight * 0.1, width: screenWidth * 0.6, height: screenWidth * 0.2)
        descButton.backgroundColor = .blue
        
        contentView.addSubview(descButton)

    }
    
}
