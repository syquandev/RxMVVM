//
//  Observable+.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//
import RxSwift
import RxCocoa

extension SharedSequenceConvertibleType where Element == Bool {
    public func not() -> SharedSequence<SharingStrategy, Bool> {
        return self.map(!)
    }
}
