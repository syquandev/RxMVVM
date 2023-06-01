//
//  Validation+Comparable.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import ValidatedPropertyKit

extension Validation where Value: Comparable {
    
    public static func greaterOrEqual(_ comparableValue: Value, message: String) -> Validation {
        return .init { value in
            if value >= comparableValue {
                return .success(())
            } else {
                return .failure(ValidationError(message: message))
            }
        }
    }
    
    public static func greater(_ comparableValue: Value, message: String) -> Validation {
        return .init { value in
            if value > comparableValue {
                return .success(())
            } else {
                return .failure(ValidationError(message: message))
            }
        }
    }
    
}

