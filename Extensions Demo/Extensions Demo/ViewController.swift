//
//  ViewController.swift
//  Extensions Demo
//
//  Created by Jieqiong Yu on 7/10/18.
//  Copyright © 2018 Jieqiong Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorizeButton: UIButton!
    @IBOutlet weak var wiggleButton: UIButton!
    @IBOutlet weak var dimButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func colorizedButtonPressed(_ sender: Any) {
        colorizeButton.colorize()
    }
    
    @IBAction func wiggleButtonPressed(_ sender: Any) {
        wiggleButton.wiggle()
    }
    
    @IBAction func dimButtonPressed(_ sender: Any) {
        dimButton.dim()
    }
}

