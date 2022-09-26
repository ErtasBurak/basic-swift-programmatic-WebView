//
//  DetailViewController.swift
//  basic-swift-programmatically-WebView
//
//  Created by Burak Ertaş on 26.09.2022.
//

import UIKit

import UIKit
import WebKit

var selectedNews:String = ""

class DetailPage: UIViewController, WKNavigationDelegate {
    
    var collectionView: UICollectionView!
    
    var detailID = "detailID"
    
    var titleLbl = UILabel()
    
    let url = URL(string: selectedNews)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaultSize(view: view)
        setupUI()
         
    }
    
    func setupUI(){
        
        view.backgroundColor = .white
        createCollectionView()
   
    }
    
    func createCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 0.8 * screenWidth, height: 0.1 * screenHeight )
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .vertical
        collectionView = UICollectionView(frame: CGRect(x: 0, y: 0  , width: screenWidth, height: screenHeight), collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(DetailPageCell.self, forCellWithReuseIdentifier: detailID)
        
        view.addSubview(collectionView)
        
    }
    
}

extension DetailPage: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
            return newsArr.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: detailID, for: indexPath) as! DetailPageCell
            cell.title.text = newsArr[indexPath.row].title
            cell.descButton.setTitle("Detail", for: .normal)
            cell.descButton.tag = indexPath.row
            cell.descButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
            return cell
        
    }
    
    @objc func buttonClicked(sender: UIButton){
        
        let indexpath1 = IndexPath(row: sender.tag, section: 0)
        selectedNews = newsArr[indexpath1.row].desc
        
        navigationController?.pushViewController(WebView(), animated: true)
        
    }
    
}

class WebView:UIViewController, WKNavigationDelegate{
    var webView: WKWebView!
    var urlDetail = DetailPage()
    override func viewDidLoad() {
        webView = WKWebView()
        webView.navigationDelegate = self
        webView.load(URLRequest(url: urlDetail.url!))
        webView.allowsBackForwardNavigationGestures = true
        view = webView

    }
}
