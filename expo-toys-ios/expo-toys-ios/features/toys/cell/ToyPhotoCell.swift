//
//  ToyPhotoCell.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 19/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class ToyPhotoCell: UICollectionViewCell {
    @IBOutlet weak var photo: UIImageView!
    
    var photoUrl: String! {
        didSet {
            render()
        }
    }
    
    func render() {
        if let image = URL(string: photoUrl) as URL? {
            photo.sd_setImage(with: image, completed: nil)
        }
    }
    
    override func prepareForReuse() {
        photo.image = nil
    }
}
