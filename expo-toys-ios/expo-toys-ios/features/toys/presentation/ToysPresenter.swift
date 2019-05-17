//
//  ToysPresenter.swift
//  expo-toys-ios
//
//  Created by Alex Campayo on 17/05/2019.
//  Copyright © 2019 Alex Campayo. All rights reserved.
//

import Foundation

class ToysPresenter {
    
    var view: View?
    
    private let toysRepository = ToysRepository()
    
    func attachView(view: View) {
        self.view = view
        renderToys()
    }
    
    private func renderToys() {
        if let view = view {
            view.showLoading()
            toysRepository.toys(success: { (toys) in
                view.renderToys(toys: toys)
                view.hideLoading()
            }) { (error) in
                view.showEmptyView()
                view.hideLoading()
            }
        }
    }
}

protocol View {
    func renderToys(toys: [Toy])
    func showEmptyView()
    func showLoading()
    func hideLoading()
}
