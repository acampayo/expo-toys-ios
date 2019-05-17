//
//  ToysDataSource.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 17/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation

class ToysDataSource {
    
    func toys(success: @escaping ([Toy]) -> Void, failure: @escaping (Error) -> Void) {
        ToysApi.getToys(success: { (toysDict) in
            var toys = [Toy]()
            if let toysDict = toysDict as? [[String : Any]] {
                for toyDict in toysDict {
                    toys.append(Toy(dict: toyDict))
                }
            }
            success(toys)
        }) { (error) in
            failure(error)
        }
    }
}
