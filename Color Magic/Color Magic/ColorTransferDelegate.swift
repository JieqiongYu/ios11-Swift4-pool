//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Jieqiong Yu on 7/11/18.
//  Copyright © 2018 Jieqiong Yu. All rights reserved.
//
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String) 
}
