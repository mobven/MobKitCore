//
//  MMBKit.swift
//  MMBKit
//
//  Created by Rasid Ramazanov on 09.03.2020.
//  Copyright © 2020 Mobven. All rights reserved.
//

import Foundation
import AppSecurity

public class MMBKit {
    
    public static let shared: MMBKit = MMBKit()
    
    public func setup() {
        AppSecurity.setup()
    }
    
}
