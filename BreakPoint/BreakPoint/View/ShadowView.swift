//
//  ShadowView.swift
//  BreakPoint
//
//  Created by Ahmed Elbasha on 9/17/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }

}
