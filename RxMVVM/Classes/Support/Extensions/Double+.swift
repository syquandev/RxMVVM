//
//  Double+.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import Foundation

extension Double {
    var currency: String {
        return String(format: "$%.02f", self)
    }
}
