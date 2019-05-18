//
//  ToyCell.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 17/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class ToyCell: UITableViewCell {
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    var toy: Toy! {
        didSet {
            render()
        }
    }
    
    func render() {
        if !toy.photos.isEmpty, let image = URL(string: toy.photos[0]) as URL? {
            photo.sd_setImage(with: image, completed: nil)
        }
        name.text = toy.artist
    }
    
    override func prepareForReuse() {
        name.text = ""
        photo.image = nil
    }
}
