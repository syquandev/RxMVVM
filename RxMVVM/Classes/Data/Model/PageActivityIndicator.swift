//
//  PageActivityIndicator.swift
//  RxMVVM
//
//  Created by QUANHS on 02/06/2023.
//

import UIKit
import RxSwift
import RxCocoa

open class PageActivityIndicator {
    public var loadingIndicator: MultiActivityIndicator
    public var reloadingIndicator: MultiActivityIndicator
    public var loadingMoreIndicator: MultiActivityIndicator
    
    public init() {
        loadingIndicator = MultiActivityIndicator()
        reloadingIndicator = MultiActivityIndicator()
        loadingMoreIndicator = MultiActivityIndicator()
    }
    
    public init(loadingIndicator: MultiActivityIndicator,
                reloadingIndicator: MultiActivityIndicator,
                loadingMoreIndicator: MultiActivityIndicator) {
        self.loadingIndicator = loadingIndicator
        self.reloadingIndicator = reloadingIndicator
        self.loadingMoreIndicator = loadingMoreIndicator
    }
}

extension PageActivityIndicator {
    public var isLoading: Driver<Bool> {
        return loadingIndicator.asDriver()
    }
    
    public var isReloading: Driver<Bool> {
        return reloadingIndicator.asDriver()
    }
    
    public var isLoadingMore: Driver<Bool> {
        return loadingMoreIndicator.asDriver()
    }
    
    public var destructured: (Driver<Bool>, Driver<Bool>, Driver<Bool>) {
        return (isLoading, isReloading, isLoadingMore)
    }
}

