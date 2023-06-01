//
//  LoginIn.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import Foundation
import RxSwift
import ValidatedPropertyKit

protocol LoginIn{
    
}

extension LoginIn{
    func login(dto: LoginDto) -> Observable<Void> {
        if let error = dto.validationError {
            return Observable.error(error)
        }
        
        return Observable.create { observer in
            DispatchQueue.global().asyncAfter(deadline: .now() + 0.5, execute: {
                observer.onNext(())
                observer.onCompleted()
            })
            return Disposables.create()
        }
    }
    
    func validateUserName(_ username: String) -> ValidationResult {
        return LoginDto.validateUserName(username).mapToVoid()
    }
    
    func validatePassword(_ password: String) -> ValidationResult {
        return LoginDto.validatePassword(password).mapToVoid()
    }
}
