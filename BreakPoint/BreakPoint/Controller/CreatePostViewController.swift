//
//  CreatePostViewController.swift
//  BreakPoint
//
//  Created by Ahmed Elbasha on 9/24/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit
import Firebase

class CreatePostViewController: UIViewController {

    @IBOutlet weak var profileImageImageView: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
    }
    
    @IBAction func sendButtonWasPressed(_ sender: Any) {
        if textView.text != nil && textView.text != "Say something here..." {
            sendButton.isEnabled = false
            DataService.instance.uploadPost(withMessage: textView.text, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil) { (isComplete) in
                if isComplete {
                    self.sendButton.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                } else {
                    self.sendButton.isEnabled = true
                    print("There was an error!")
                }
            }
        }
    }
    
    @IBAction func closeButtonWasPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
   
}
