//
//  ToyCell.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 17/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation
import UIKit

class ToyCell: UICollectionViewCell {
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    var toy: Toy! {
        didSet {
            render()
        }
    }
    
    func render() {
        //photo.image
        name.text = toy.artist
        name.text = "Alejandro Campayo"
    }
    
    override func prepareForReuse() {
        name.text = ""
        photo.image = nil
    }
}
