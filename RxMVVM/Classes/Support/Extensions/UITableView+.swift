//
//  UITableView+.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import UIKit
import RxCocoa

extension UITableView {
    var isEmpty: Binder<Bool> {
        return Binder(self) { tableView, isEmpty in
            if isEmpty {
                let frame = CGRect(x: 0,
                                   y: 0,
                                   width: tableView.frame.size.width,
                                   height: tableView.frame.size.height)
                let emptyView = EmptyDataView(frame: frame)
                tableView.backgroundView = emptyView
            } else {
                tableView.backgroundView = nil
            }
        }
    }
}

