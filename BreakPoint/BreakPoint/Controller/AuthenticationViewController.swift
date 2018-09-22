//
//  AuthenticationViewController.swift
//  BreakPoint
//
//  Created by Ahmed Elbasha on 9/17/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInByEmailButtonWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.present(loginVC, animated: true, completion: nil)
    }
    
    @IBAction func signInWithFacebookButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func signInWithGoogleButtonWasPressed(_ sender: Any) {
    }
}
