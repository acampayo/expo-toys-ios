//
//  ToysViewController.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 17/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation
import UIKit
import MBProgressHUD

class ToysViewController: UIViewController, View {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var emptyView: UILabel!
    
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
        tableView.isHidden = true
        emptyView.isHidden = false
    }
    
    func showLoading() {
        MBProgressHUD.showAdded(to: view, animated: true)
    }
    
    func hideLoading() {
        MBProgressHUD.hide(for: self.view, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail", let toy = sender as? Toy {
            (segue.destination as! ToyDetailViewController).toy = toy
        }
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowDetail", sender: toys[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
