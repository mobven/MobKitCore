//
//  MBComponent.swift
//  MobKit
//
//  Created by Rasid Ramazanov on 20.03.2020.
//  Copyright © 2020 Mobven. All rights reserved.
//

import Foundation

/// Protocol to be used by dependent frameworks.
public protocol MobKitComponentConformance {
    /// Singleton
    static func shared() -> Self
    /// Setup to be overriden by conforming framework.
    func setup()
}

open class MobKitComponent: MobKitComponentConformance {
    
    open class func shared() -> Self {
        fatalError("Initialize MobKitComponent in the related module.")
    }
    
    /// Setup to be overriden by conforming framework.
    open func setup() {
        // To be overriden by sub
    }
    
    public init() {
        // Empty initializer.
    }
    
}
