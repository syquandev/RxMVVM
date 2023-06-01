//
//  UICollectionView+.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import UIKit
import RxCocoa

extension UICollectionView {
    var isEmpty: Binder<Bool> {
        return Binder(self) { collectionView, isEmpty in
            if isEmpty {
                let frame = CGRect(x: 0,
                                   y: 0,
                                   width: collectionView.frame.size.width,
                                   height: collectionView.frame.size.height)
                let emptyView = EmptyDataView(frame: frame)
                collectionView.backgroundView = emptyView
            } else {
                collectionView.backgroundView = nil
            }
        }
    }
}
