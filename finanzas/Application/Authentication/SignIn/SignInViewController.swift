//
//  SignInViewController.swift
//  finanzas
//
//  Created by Ikatech on 8/9/19.
//  Copyright © 2019 leolopez. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signIn(_ sender: Any) {
        
        guard let email = self.emailTextField.text else {
            return
        }
        
        guard let password = self.passwordTextField.text else {
            return
        }
        
        print("Hola \(email), \(password)")
    }
}
