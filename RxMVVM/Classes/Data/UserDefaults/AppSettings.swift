//
//  AppSettings.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import UIKit

enum AppSettings {
    
    @Storage(key: "didInit", defaultValue: false)
    static var didInit: Bool // swiftlint:disable:this let_var_whitespace
}
