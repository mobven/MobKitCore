//
//  MobKitTests.swift
//  MobKitTests
//
//  Created by Rasid Ramazanov on 09.03.2020.
//  Copyright © 2020 Mobven. All rights reserved.
//

import XCTest
@testable import MobKitCore

class MobKitTests: XCTestCase {
    
    final class TestComponent: MobKitComponent {
        
        static var instance: TestComponent?
        public override class func shared() -> Self {
            if instance == nil {
                self.instance = TestComponent()
            }
            guard let sharedInstance = self.instance as? Self else {
                fatalError("Could not cast MobKitComponent")
            }
            return sharedInstance
        }
        
        public var name: String?
        
        var isSetupCalled: Bool = false
        override func setup() {
            isSetupCalled = true
        }
    }
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        MobKit.setup(with: [TestComponent.self])
    }
    
    func testSetup() {
        XCTAssert(TestComponent.shared().isSetupCalled)
    }
    
    func testIsDeveloperMode() {
        XCTAssert(!MobKit.shared().isDeveloperModeOn)
        MobKit.shared().isDeveloperModeOn = true
        XCTAssert(MobKit.shared().isDeveloperModeOn)
    }
    
}
