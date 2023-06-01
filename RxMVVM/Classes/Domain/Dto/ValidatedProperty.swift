//
//  ValidatedProperty.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import ValidatedPropertyKit

public protocol ValidatedProperty {
    var isValid: Bool { get }
    var validationError: ValidationError? { get }
}

extension Validated: ValidatedProperty { }

