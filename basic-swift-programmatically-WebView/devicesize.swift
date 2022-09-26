//
//  devicesize.swift
//  basic-swift-programmatically-WebView
//
//  Created by Burak Ertaş on 26.09.2022.
//

import Foundation
import UIKit

var screenWidth = CGFloat()
var screenHeight = CGFloat()

func setDefaultSize(view: UIView){
    screenWidth = view.bounds.size.width
    screenHeight = view.bounds.size.height
}
