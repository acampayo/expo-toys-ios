//
//  ToyDetailViewController.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 18/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class ToyDetailViewController: UITableViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var technique: UILabel!
    @IBOutlet weak var size: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var instagramUser: UILabel!
    @IBOutlet weak var biography: UILabel!
    
    var toy: Toy?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        renderDetail()
    }
    
    private func renderDetail() {
        guard let toy = toy else { return }
        title = toy.artist
        if !toy.photos.isEmpty, let image = URL(string: toy.photos[0]) as URL? {
            self.image.sd_setImage(with: image, completed: nil)
        }
        self.name.text = toy.name
        self.technique.text = toy.technique
        self.size.text = toy.size
        self.desc.text = toy.description
        self.instagramUser.text = toy.instagramUser
        self.instagramUser.text = "@Perico"
        self.biography.text = toy.biography
    }
}
