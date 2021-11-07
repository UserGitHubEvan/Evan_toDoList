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
        print("registrationAction")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        return Credentials(email: emailTextField.text, password: passwordTextField.text).validate()
    }

}
