import Combine
import SwiftUI

class TheTime: ObservableObject {
    @Published var hour = Double()
    @Published var minute = Double()
    @Published var secondQuartzMovement = Double()
    @Published var secondMecahnicalMovement = Double()
    
    @Published var month = Double()
    @Published var weekday = Double()
    
    @Published var day = Int()
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
            let myDate = Date()
            let myCalendar = Calendar.current
            
            self.hour = Double(myCalendar.component(.hour, from: myDate))
            self.minute = Double(myCalendar.component(.minute, from: myDate))

            let second = Double(myCalendar.component(.second, from: myDate))
            let nanosecond = Double(myCalendar.component(.nanosecond, from: myDate))
            self.secondQuartzMovement = second
            self.secondMecahnicalMovement = second + (nanosecond / 1000000000)
            
            self.month = Double(myCalendar.component(.month, from: myDate))
            self.weekday = Double(myCalendar.component(.weekday, from: myDate))
            
            self.day = myCalendar.component(.day, from: myDate)
        }
    }
}
