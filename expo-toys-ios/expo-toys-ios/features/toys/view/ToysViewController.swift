//
//  ToysViewController.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 17/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation
import UIKit

class ToysViewController: UIViewController, View {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let presenter = ToysPresenter()
    private var toys = [Toy]()
    private let numColummns = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        presenter.attachView(view: self)
    }
    
    func setupCollectionView() {
        let viewWidth = view.frame.size.width
        let width = viewWidth / CGFloat(numColummns)
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
    }
    
    func renderToys(toys: [Toy]) {
        self.toys = toys
        collectionView.reloadData()
    }
    
    func showEmptyView() {
        
    }
    
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
}

extension ToysViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.toys.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ToyCell", for: indexPath) as! ToyCell
        cell.toy = toys[indexPath.row]
        return cell
    }
}
