//
//  TheChronometer.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 11/7/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

class TheChronometer: ObservableObject {
    @Published var millisecondsSince1970 = Double()

    init() {
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
            self.millisecondsSince1970 = Double(Date().millisecondsSince1970)
        }
    }
}

// h/t https://stackoverflow.com/a/40135192
extension Date {
    var millisecondsSince1970:Int64 {
        return Int64((self.timeIntervalSince1970 * 1000.0).rounded())
    }

    init(milliseconds:Int64) {
        self = Date(timeIntervalSince1970: TimeInterval(milliseconds) / 1000)
    }
}
