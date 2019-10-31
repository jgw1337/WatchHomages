//
//  Copyright © 2019 jgw. All rights reserved.
//

import Combine
import SwiftUI

class TheChronometer: ObservableObject {
    @Published var isRunning: Bool = false
    @Published var chronoSec: Double = 0
    
    var thisChrono = Timer()
    
    func start() {
        print("===== ===== =====")
        print("start \(self.chronoSec) \(self.isRunning)")
        if !self.isRunning {
            self.isRunning = true
            self.thisChrono = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true) {_ in
                self.chronoSec += 0.25
                print("running \(self.chronoSec) \(self.isRunning)")
            }
        }
    }
    
    func stop() {
        if self.isRunning {
            self.isRunning = false
            self.thisChrono.invalidate()
        }
        print("===== =====")
        print("stop \(self.chronoSec) \(self.isRunning)")
    }
    
    func reset() {
        self.stop()
        self.chronoSec = 0
        print("=====")
        print("reset \(self.chronoSec) \(self.isRunning)")
    }
}
