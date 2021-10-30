//
//  ViewController.swift
//  toDoList
//
//  Created by MacBook Pro on 18.10.2021.
//

import UIKit

class ViewController: BaseViewController {
    
    
    @IBOutlet weak var applicationTitle: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var resultLabel: UILabel!
    
    let expectedEmail: String = "test@test.com"
    let expectedPassword: String = "123456789"
    
    override func viewDidLoad() {
//        super.viewDidLoad()
        print("viewDidLoad")
        
//        self.view.backgroundColor = .purple
        
        resultLabel = UILabel.init()
        resultLabel.text = ""
        resultLabel.frame = CGRect.init(x: 50, y: 50, width: 50, height: 20)
        view.addSubview(resultLabel)
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.init(item: resultLabel!,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: loginButton,
                                attribute: .top,
                                multiplier: 1,
                                constant: -20).isActive = true
        
        NSLayoutConstraint.init(item: resultLabel!,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0).isActive = true
        
        /*
         Create project
         */
        
//        applicationTitle.backgroundColor = UIColor.red
        
        loginButton.layer.cornerRadius = 15
//        loginButton.
    }
    
    @IBAction func loginAction(_ sender: Any) {
        print("loginAction")
        
        if let email = emailTextField.text,
           let password = passwordTextField.text {
            
            if email.contains("@") {
                if password.count > 8 {
                    if email == expectedEmail {
                        if password == expectedPassword {
                            resultLabel.text = "Success"
                        } else {
                            resultLabel.text = "Fail: wrong password"
                        }
                    } else {
                        resultLabel.text = "Fail: wrong email"
                    }
                    
                } else {
                    resultLabel.text = "Fail: password must be at leats 8 symbols"
                }
            } else {
                resultLabel.text = "Fail: wrong email format"
            }
        } else {
            resultLabel.text = "Fail: empty fields"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
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

