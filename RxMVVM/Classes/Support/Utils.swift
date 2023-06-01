//
//  Utils.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import UIKit

func after(interval: TimeInterval, completion: (() -> Void)?) {
    DispatchQueue.main.asyncAfter(deadline: .now() + interval) {
        completion?()
    }
}
