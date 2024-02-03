//
//  FSMObjects.swift
//  Fake, Mock, StubTests
//
//  Created by Jacob Davis on 1/31/24.
//

import Foundation


protocol PhotonBehavior {
    func observe() -> Bool
}

class UnobservedPhoton: PhotonBehavior {
    func observe() -> Bool {
        
        return false
    }
}

class ObservedPhoton: PhotonBehavior {
    func observe() -> Bool {

        return true
    }
}

class MockPhoton: PhotonBehavior {
    var observeCalled = false
    
    func observe() -> Bool {
        observeCalled = true
        
        return true
    }
}

class Photon {
    let behavior: PhotonBehavior
    
    init(behavior: PhotonBehavior) {
        self.behavior = behavior
    }
    
    func observe() -> Bool {
        return behavior.observe()
    }
}

