//
//  MMBKitTests.swift
//  MMBKitTests
//
//  Created by Rasid Ramazanov on 09.03.2020.
//  Copyright © 2020 Mobven. All rights reserved.
//

import XCTest
@testable import MMBKit

class MMBKitTests: XCTestCase {
    
    final class TestComponent: MBComponent {
        static let shared: TestComponent = TestComponent()
        var isSetupCalled: Bool = false
        func setup() {
            isSetupCalled = true
        }
    }
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        MMBKit.setup(with: [TestComponent.shared])
    }
    
    func testSetup() {
        XCTAssert(TestComponent.shared.isSetupCalled)
    }
    
}
