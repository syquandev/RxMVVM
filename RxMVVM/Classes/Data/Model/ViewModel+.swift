//
//  ViewModel+.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import UIKit
import RxSwift
import RxCocoa

extension ViewModel {
    public func checkIfDataIsEmpty<T: Collection>(trigger: Driver<Bool>, items: Driver<T>) -> Driver<Bool> {
        return Driver
            .combineLatest(trigger, items) {
                ($0, $1.isEmpty)
            }
            .map { loading, isEmpty -> Bool in
                if loading { return false }
                return isEmpty
            }
            .distinctUntilChanged()
    }
    
    public func select<T>(trigger: Driver<IndexPath>, items: Driver<[T]>) -> Driver<T> {
        return trigger
            .withLatestFrom(items) {
                return ($0, $1)
            }
            .filter { indexPath, items in indexPath.row < items.count }
            .map { indexPath, items in
                return items[indexPath.row]
            }
    }
}

