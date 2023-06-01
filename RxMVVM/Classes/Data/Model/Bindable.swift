//
//  Bindable.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import UIKit

public protocol Bindable: class {
    associatedtype ViewModel
    
    var viewModel: ViewModel! { get set }
    
    func bindViewModel()
}

extension Bindable where Self: UIViewController {
    public func bindViewModel(to model: Self.ViewModel) {
        viewModel = model
        loadViewIfNeeded()
        bindViewModel()
    }
}

