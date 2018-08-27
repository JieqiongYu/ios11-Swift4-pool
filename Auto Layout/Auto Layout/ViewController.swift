//
//  ViewController.swift
//  Auto Layout
//
//  Created by Jieqiong Yu on 8/27/18.
//  Copyright © 2018 Jieqiong Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        let square = UIView(frame: CGRect(x: self.view.frame.width / 2 - 50, y: self.view.frame.height / 2 - 50, width: 100, height: 100))
        square.backgroundColor = UIColor.red
        self.view.addSubview(square)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

