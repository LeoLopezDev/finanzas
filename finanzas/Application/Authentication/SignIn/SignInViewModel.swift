//
//  SignInViewModel.swift
//  finanzas
//
//  Created by Leonardo Lopez on 8/10/19.
//  Copyright © 2019 leolopez. All rights reserved.
//

import Foundation
import FirebaseAuth

class SignInViewModel {
    
    typealias SignInHandler = ((_ success:Bool, _ error:Error?) -> Void)
    
    static func signInWith(email:String?, password:String?, handler:SignInHandler?){
        
        guard let email = email, validate(text: email, regex: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}") else {
            return
        }
        
        //Mínimo 8 caracteres al menos 1 alfabeto y 1 número
        guard let password = password, validate(text: password, regex: "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$") else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) {(result, error) in
            if let error = error{
                handler?(false, error)
            }
            
            if result != nil{
                handler?(true, nil)
            }
        }
    }
    
    static func validate(text:String, regex:String) -> Bool {
        let range = NSRange(location: 0, length: text.count)
        let regex = try? NSRegularExpression(pattern: regex, options: [])
        
        return regex?.firstMatch(in: text, options: [], range: range) != nil
    }
}
