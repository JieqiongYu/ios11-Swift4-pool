//
//  BorderButton.swift
//  App Swoosh
//
//  Created by Jieqiong Yu on 7/11/18.
//  Copyright © 2018 Jieqiong Yu. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
