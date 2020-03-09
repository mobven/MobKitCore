//
//  MMBKit.swift
//  MMBKit
//
//  Created by Rasid Ramazanov on 09.03.2020.
//  Copyright © 2020 Mobven. All rights reserved.
//

import Foundation
import AppSecurity

class MMBKit {
    
    static let shared: MMBKit = MMBKit()
    
    func setup() {
        AppSecurity.setup()
    }
    
    
}
