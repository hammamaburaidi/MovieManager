//
//  ViewController.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 23.11.2022.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // this to make layer delegated in order to use the UITextFieldDelegate class benefits
        txtEmail.delegate = self
        txtPassword.delegate = self
        
        // to change the placeholder programmatically
        txtEmail.placeholder = "Type your email"
        txtPassword.placeholder = " Type your password"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // In order to hide the navigation bar in the login screen
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    // to change the keyborad from the first TextField (Email) to the second TextField (Password)
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtEmail {
            txtPassword.becomeFirstResponder()
        }
        return true
    }
    
}

