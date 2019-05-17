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
    @IBOutlet weak var tableView: UITableView!
    
    private let presenter = ToysPresenter()
    private var toys = [Toy]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
    }
    
    func renderToys(toys: [Toy]) {
        self.toys = toys
        tableView.reloadData()
    }
    
    func showEmptyView() {
        
    }
    
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
}

extension ToysViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.toys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToyCell", for: indexPath) as! ToyCell
        cell.toy = toys[indexPath.row]
        return cell
    }
}
