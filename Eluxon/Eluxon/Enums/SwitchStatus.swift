//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Jieqiong Yu on 7/11/18.
//  Copyright © 2018 Jieqiong Yu. All rights reserved.
//

import Foundation

enum SwitchStaus: Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
            case .on:
                self = .off
            case .off:
                self = .on
        }
    }
}
