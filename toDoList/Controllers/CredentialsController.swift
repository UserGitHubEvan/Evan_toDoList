//
//  CredentialsController.swift
//  toDoList
//
//  Created by MacBook Pro on 08.12.2021.
//

import Foundation

class CredentialsController {
    
    var credentials: Credentials
    let expectedCredentials: Credentials = Credentials.init(email: "test@test.com", password: "123456789")
    
    init(credentials: Credentials) {
        self.credentials = credentials
    }
    
    func validate() -> Bool {
        if let email = credentials.email,
           let password = credentials.password {
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
    
    func checkCredentials() -> Bool {
        credentials.email == expectedCredentials.email && credentials.password == credentials.password
    }
}
