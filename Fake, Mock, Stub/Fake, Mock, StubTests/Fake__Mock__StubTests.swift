//
//  Fake__Mock__StubTests.swift
//  Fake, Mock, StubTests
//
//  Created by Jacob Davis on 1/31/24.
//

import XCTest
@testable import Fake__Mock__Stub

final class Fake__Mock__StubTests: XCTestCase {
    
    func testObservedPhoton() {
        let observedPhoton = ObservedPhoton()
        
        XCTAssertTrue(observedPhoton.observe())
    }
    
    func testUnobservedPhoton() {
        let unobservedPhoton = UnobservedPhoton()
        
        XCTAssertFalse(unobservedPhoton.observe())
    }
    
    func testPhotonObserver() {
        let mockPhoton = MockPhoton()
        
        XCTAssertTrue(mockPhoton.observe())
        XCTAssertTrue(mockPhoton.observeCalled)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
