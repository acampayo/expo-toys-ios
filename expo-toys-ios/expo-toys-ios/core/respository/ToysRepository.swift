//
//  ToysRepository.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 17/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation

class ToysRepository {
    
    let toysDataSource = ToysDataSource()
    
    func getToys(success: @escaping ([Toy]) -> Void, failure: @escaping (Error) -> Void) {
        toysDataSource.getToys(success: { (toys) in
            
        }) { (error) in
            
        }
    }
}
