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
    
    func toys(success: @escaping ([Toy]) -> Void, failure: @escaping (Error) -> Void) {
        toysDataSource.toys(success: { (toys) in
            success(toys)
        }) { (error) in
            failure(error)
        }
    }
}
