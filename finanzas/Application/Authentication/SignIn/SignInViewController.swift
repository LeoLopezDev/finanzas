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
        
        guard let email = self.emailTextField.text, validate(text: email, regex: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}") else {
            return
        }
        
        //Mínimo 8 caracteres al menos 1 alfabeto y 1 número
        guard let password = self.passwordTextField.text, validate(text: password, regex: "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$") else {
            return
        }
        
        print("Hola \(email), \(password)")
    }
    
    func validate(text:String, regex:String) -> Bool {
        let range = NSRange(location: 0, length: text.count)
        let regex = try? NSRegularExpression(pattern: regex, options: [])
        
        return regex?.firstMatch(in: text, options: [], range: range) != nil
    }
}
