//
//  ToysApi.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 17/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation
import Alamofire

class ToysApi {
    
    static func getToys(success: @escaping (Any?) -> Void, failure: @escaping (Error) -> Void) {
        let toysUrl = APIConstants.baseURL.appending(APIConstants.toysService)
        Alamofire.request(toysUrl)
            .validate()
            .responseJSON { (response) in
                if response.result.isSuccess {
                    success(response.result.value)
                } else {
                    failure(response.error!)
                }
        }
    }
}
