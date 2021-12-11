//
//  RegistrationViewController.swift
//  toDoList
//
//  Created by MacBook Pro on 25.10.2021.
//

import UIKit

class RegistrationViewController: BaseViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
    @IBAction func registrationAction(_ sender: Any) {
        print("registrationAction")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return CredentialsController(credentials: Credentials(email: emailTextField.text, password: passwordTextField.text)).validate()
    }

}
