//
//  RegistrationViewController.swift
//  toDoList
//
//  Created by MacBook Pro on 25.10.2021.
//

import UIKit

class RegistrationViewController: BaseViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
//    let expectedEmail: String = "test@test.com"
//    let expectedPassword: String = "123456789"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registrationAction(_ sender: Any) {
//        print("registrationAction")
    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if let email = emailTextField.text,
//           let password = passwordTextField.text {
//            
//            if email.contains("@") {
//                if password.count > 8 {
//                    if email == expectedEmail {
//                        if password == expectedPassword {
//                            print("Success")
//                            return true
//                        } else {
//                            print("Fail: wrong password")
//                        }
//                    } else {
//                        print("Fail: wrong email")
//                    }
//                    
//                } else {
//                    print("Fail: password must be at leats 8 symbols")
//                }
//            } else {
//                print("Fail: wrong email format")
//            }
//        } else {
//            print("Fail: empty fields")
//        }
//        return false
//    }

}
