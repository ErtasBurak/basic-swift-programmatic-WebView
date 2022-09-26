//
//  TabBarController.swift
//  basic-swift-programmatically-WebView
//
//  Created by Burak Ertaş on 26.09.2022.
//

import UIKit
class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        setupTabBars()
        
    }
    
    func setupTabBars(){
        // Create Tab one
        let tabOne = ViewController()
        let tabOneBarItem = UITabBarItem(title: "Main Page", image: nil, selectedImage: nil)
        
        tabOne.tabBarItem = tabOneBarItem
        
        // Create Tab two
        let tabTwo = DetailPage()
        let tabTwoBarItem2 = UITabBarItem(title: "Detail Page", image: nil, selectedImage: nil)
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        
        self.viewControllers = [tabOne, tabTwo]
        
        self.tabBar.backgroundColor = .white //default color is black and we can not see the second tab because it has gray color
    }
    
}
