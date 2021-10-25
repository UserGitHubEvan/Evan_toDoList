//
//  ViewController.swift
//  toDoList
//
//  Created by MacBook Pro on 18.10.2021.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet weak var applicationTitle: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
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
    
    override func viewWillDisappear(_ animated: Bool)
    {
        if isMovingFromParent
        {
            print("View controller was popped")
        } else {
            print("New view controller was pushed")
        }
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Представлення буде показано
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Представлення уже показано
        print("viewDidAppear")
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        // Hide the navigation bar on the this view controller
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
////        print("viewWillDisappear")
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        // Show the navigation bar on other view controllers
//        self.navigationController?.setNavigationBarHidden(false, animated: true)
////        print("viewDidDisappear")
//    }


}

