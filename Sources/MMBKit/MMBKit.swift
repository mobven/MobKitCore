//
//  MMBKit.swift
//  MMBKit
//
//  Created by Rasid Ramazanov on 09.03.2020.
//  Copyright © 2020 Mobven. All rights reserved.
//

import Foundation

public class MMBKit {
    
    /// Initializes component frameworks.
    class func setup(with frameworks: [MBComponent]) {
        for framework in frameworks {
            framework.setup()
        }
    }
    
}
