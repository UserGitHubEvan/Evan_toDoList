//
//  Credentials.swift
//  toDoList
//
//  Created by MacBook Pro on 04.11.2021.
//

import Foundation

class LoginCredentials: Credentials {
    
    private var expectedEmail: String?
    private var expectedPassword: String?
    
    override init(email: String?, password: String?) {
        super.init(email: email, password: password)
        
        self.expectedEmail = "test@test.com"
        self.expectedPassword = "123456789"
    }
    
    override func validate() -> Bool {
        let isValid = super.validate()
        return isValid ? (self.email == expectedEmail && self.password == expectedPassword) : false
    }
}

class Credentials: CredentialsInterface {
    var email: String?
    var password: String?
    
    init(email: String?, password: String?) {
        self.email = email
        self.password = password
    }
    
    func validate() -> Bool {
        if let email = self.email,
           let password = self.password {
            if email.contains("@") {
                if password.count > 8 {
                    print("Right Format")
                    return true
                } else {
                    print("Fail: password must be at leats 8 symbols")
                }
            } else {
                print("Fail: wrong email format")
            }
        } else {
            print("Fail: empty fields")
        }
        return false
    }
}

protocol CredentialsInterface {
    var email: String? { get set }
    var password: String? { get set }
    
    func validate() -> Bool
}
