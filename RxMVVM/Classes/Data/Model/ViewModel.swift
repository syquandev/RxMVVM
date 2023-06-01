//
//  ViewModel.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import RxSwift

public protocol ViewModel {
    associatedtype Input
    associatedtype Output
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output
}
