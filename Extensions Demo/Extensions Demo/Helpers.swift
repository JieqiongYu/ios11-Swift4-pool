//
//  Helpers.swift
//  Extensions Demo
//
//  Created by Jieqiong Yu on 7/10/18.
//  Copyright © 2018 Jieqiong Yu. All rights reserved.
//

import UIKit

func generate3RandomNumbers(quantity: Int) -> [CGFloat] {
    var randomnumberArray = [CGFloat]()
    
    // underscore means no index value needed here
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomnumberArray.append(randomNumber)
    }
    return randomnumberArray
}
