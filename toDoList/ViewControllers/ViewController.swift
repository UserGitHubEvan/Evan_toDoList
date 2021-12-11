//
//  ViewController.swift
//  toDoList
//
//  Created by MacBook Pro on 18.10.2021.
//

import UIKit

class ViewController: BaseViewController, UITextFieldDelegate {
    
    @IBOutlet weak var applicationTitle: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        loginButton.layer.cornerRadius = 15
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
    @IBAction func loginAction(_ sender: Any) {
        print("loginAction")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier != "fromLoginToTaskList" {
            return true
        }
        
        let credentialsController = CredentialsController(credentials: Credentials(email: emailTextField.text, password: passwordTextField.text))
        
        return credentialsController.validate() && credentialsController.checkCredentials()
    }
    
    // відобразив показ ф-й: viewWillDisappear та viewDidDisappear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("viewDidDisappear")
    }

}

