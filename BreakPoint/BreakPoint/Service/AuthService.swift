//
//  AuthService.swift
//  BreakPoint
//
//  Created by Ahmed Elbasha on 9/19/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationCompletion: @escaping (_ status: Bool, _ error: Error?) ->()) {
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            guard let user = user else {
                userCreationCompletion(false, error)
                return
            }
            
            let userData = ["provider": user.user.providerID, "email": user.user.email]
            DataService.instance.createDBUser(uid: user.user.uid, userData: userData)
            userCreationCompletion(true, nil)
        }
    }
    
    func loginUser(withEmail email: String, andPassword password: String, loginCompletion: @escaping (_ status: Bool, _ error: Error?) ->()) {
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil {
                loginCompletion(false, error)
                return
            }
            
            loginCompletion(true, nil)
        }
    }
}
