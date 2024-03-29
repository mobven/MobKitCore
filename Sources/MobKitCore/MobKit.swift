//
//  MobKit.swift
//  MobKit
//
//  Created by Rasid Ramazanov on 09.03.2020.
//  Copyright © 2020 Mobven. All rights reserved.
//

import Foundation

public class MobKit {
    
    /// Initializes component frameworks.
    public class func setup(with frameworks: [MobKitComponent.Type]) {
        for framework in frameworks {
            framework.shared().setup()
        }
    }
    
    /// Determines whether framework is in developer mode. Default, false.
    /// When enabled, logs for SecureNetwork, Networking and ErrorKit will be enabled.
    public static var isDeveloperModeOn: Bool = false
    
}
