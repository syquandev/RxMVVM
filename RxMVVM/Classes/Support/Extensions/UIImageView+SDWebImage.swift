//
//  UIImageView+SDWebImage.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import UIKit
import SDWebImage

extension UIImageView {
    func setImage(with url: URL?, completion: (() -> Void)? = nil) {
        self.sd_setImage(with: url, placeholderImage: nil, options: .refreshCached) { (_, _, _, _) in
            completion?()
        }
    }
}

