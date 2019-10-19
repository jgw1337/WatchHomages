import Combine
import SwiftUI

class TheTime: ObservableObject {
    @Published var hour = Double()
    @Published var minute = Double()
    @Published var second = Double()
    @Published var day = Int()

    init() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            let myDate = Date()
            let myCalendar = Calendar.current

            self.hour = Double(myCalendar.component(.hour, from: myDate))
            self.minute = Double(myCalendar.component(.minute, from: myDate))
            self.second = Double(myCalendar.component(.second, from: myDate))

            self.day = myCalendar.component(.day, from: myDate)
        }
    }
}
