//
//  CredentialValidation.swift
//  toDoList
//
//  Created by MacBook Pro on 18.11.2021.
//

import Foundation

protocol CredentialsInterface {
    var email: String? { get set }
    var password: String? { get set }
    
    func validate() -> Bool
}
