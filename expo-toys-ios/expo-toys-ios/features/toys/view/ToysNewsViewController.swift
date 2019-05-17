//
//  ToysNewsViewController.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 17/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import UIKit

class ToysNewsController: UIViewController {
    
    private let zonaToysUrl = "http://www.zonatoys.com/"
    
    @IBAction func openBlog() {
        let url = URL(string: zonaToysUrl)!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}

