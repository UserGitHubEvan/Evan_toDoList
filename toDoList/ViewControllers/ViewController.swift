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
    }
    
    @IBAction func loginAction(_ sender: Any) {
        print("loginAction")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier != "fromLoginToTaskList" {
            return true
        }
        
        return LoginCredentials(email: emailTextField.text, password: passwordTextField.text).validate()
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

