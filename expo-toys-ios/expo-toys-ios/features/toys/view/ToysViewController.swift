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
    private let presenter = ToysPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
    }
    
    func renderToys(toys: [Toy]) {
        print(toys)
    }
    
    func showEmptyView() {
        
    }
    
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
}
