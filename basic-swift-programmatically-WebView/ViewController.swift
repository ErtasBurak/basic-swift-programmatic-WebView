//
//  ViewController.swift
//  basic-swift-programmatically-WebView
//
//  Created by Burak Ertaş on 26.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var collectionView: UICollectionView!
    var collectionView2: UICollectionView!
    var horizontalID = "horizontalID"
    var verticalID = "verticalID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view: view)
        setupUI()
        
    }
    
    func setupUI(){
        view.backgroundColor = .red
        createCollectionView()
        createCollectionView2()
        
    }
    
    func createCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (screenWidth / 2) - 0.075 * screenWidth, height: screenWidth / 1.6)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: CGRect(x: 0, y: 0.1 * screenHeight, width: screenWidth, height: 0.3 * screenHeight), collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(HorizontalCell.self, forCellWithReuseIdentifier: horizontalID)
        
        view.addSubview(collectionView)
        
    }
    
    func createCollectionView2(){
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (screenWidth / 2) - 0.075 * screenWidth, height: screenWidth / 1.6)
        layout.scrollDirection = .vertical
    
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumInteritemSpacing = 10
         layout.minimumLineSpacing = 10
        collectionView2 = UICollectionView(frame: CGRect(x: 0, y: 0.425 * screenHeight, width: screenWidth, height: 0.575 * screenHeight), collectionViewLayout: layout)
        collectionView2.backgroundColor = .white
        collectionView2.delegate = self
        collectionView2.dataSource = self
        collectionView2.showsHorizontalScrollIndicator = false
        collectionView2.register(VerticalViewCell.self, forCellWithReuseIdentifier: verticalID)
        
        view.addSubview(collectionView2)
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView{
            return trendNewsArr.count
        }else{
            return newsArr.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: horizontalID, for: indexPath) as! HorizontalCell
            cell.imageView.image = UIImage(named: trendNewsArr[indexPath.row].image)
            cell.title.text = trendNewsArr[indexPath.row].title
            return cell
        }else{
            let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: verticalID, for: indexPath) as! VerticalViewCell
            cell2.imageView.image = UIImage(named: newsArr[indexPath.row].image)
            cell2.title.text = newsArr[indexPath.row].title
            return cell2
        }
        
    }
    
    
}


