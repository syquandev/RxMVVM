//
//  UIViewController+Debug.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import UIKit

extension UIViewController {
    public func logDeinit() {
        print(String(describing: type(of: self)) + " deinit")
    }
}
