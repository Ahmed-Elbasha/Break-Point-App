//
//  CreatePostVCUITextViewDelegate.swift
//  BreakPoint
//
//  Created by Ahmed Elbasha on 9/24/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import Foundation
import UIKit

extension CreatePostViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
    
}
