//
//  ScreenLoadingType.swift
//  RxMVVM
//
//  Created by QUANHS on 02/06/2023.
//

public enum ScreenLoadingType<Input> {
    case loading(Input)
    case reloading(Input)
}
