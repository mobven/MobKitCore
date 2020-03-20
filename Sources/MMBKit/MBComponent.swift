//
//  MBComponent.swift
//  MMBKit
//
//  Created by Rasid Ramazanov on 20.03.2020.
//  Copyright © 2020 Mobven. All rights reserved.
//

import Foundation

/// Protocol to be used by dependent frameworks.
public protocol MBComponent {
    /// Setup to be overriden by conforming framework.
    func setup()
}
