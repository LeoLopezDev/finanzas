//
//  SignInViewController.swift
//  finanzas
//
//  Created by Ikatech on 8/9/19.
//  Copyright © 2019 leolopez. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signIn(_ sender: Any) {
        
        SignInViewModel.signInWith(email: self.emailTextField.text, password: self.passwordTextField.text) {[weak self] (success, error) in
            if let error = error{
                let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
                let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(ok)
                self?.present(alert, animated: true, completion: nil)
                return
            }
            
            if success{
                self?.performSegue(withIdentifier: "goToMain", sender: nil)
            }
        }
    }
}
