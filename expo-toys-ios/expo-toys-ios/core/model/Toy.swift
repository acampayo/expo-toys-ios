//
//  Toy.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 17/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation

struct Toy {
    var artist = ""
    var name = ""
    var technique = ""
    var size = ""
    var description = ""
    var biography = ""
    var instagramUrl = ""
    var instagramUser = ""
    var photos = [String]()
    
    init(dict: [String : Any] = [:]) {
        artist = dict["artist"] as? String ?? ""
        name = dict["name"] as? String ?? ""
        technique = dict["technique"] as? String ?? ""
        size = dict["size"] as? String ?? ""
        description = dict["description"] as? String ?? ""
        biography = dict["biography"] as? String ?? ""
        instagramUrl = dict["instagramUrl"] as? String ?? ""
        instagramUser = dict["instagramUser"] as? String ?? ""
        
        if let photosDict = dict["photos"] as? [String] {
            for photo in photosDict {
                photos.append(photo)
            }
        }
    }
}
