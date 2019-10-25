//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct WatchFaceView: View {
    @ObservedObject var thisTime = TheTime()
    
    var face: WatchFace = .han
    var movement: WatchMovement = .quartz
    
    var showMonthsComplication: Bool = false
    var showDaysComplication: Bool = false
    var showSecondsComplication: Bool = false
    var showMilitaryTimeComplication: Bool = false
    var showTachymeter: Bool = false

    var body: some View {
        let month = self.thisTime.month
        let weekday = self.thisTime.weekday
        
        let hour = self.thisTime.hour
        let minute = self.thisTime.minute
        let second = movement == .mechanical ?
            self.thisTime.secondMecahnicalMovement :
            self.thisTime.secondQuartzMovement
        
        let day = self.thisTime.day
        
        return ZStack {
            Image("\(face)_background")
            
            Image("\(face)_watch_face")
            
            Text(String(day))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 94)
            
            if showMilitaryTimeComplication {
                MilitaryTimeView(face: face, hour: hour)
                    .offset(x: -60)
            }

            if showMonthsComplication {
                MonthsView(face: face, month: month)
                    .offset(y: 70)
            }
            
            if showDaysComplication {
                DaysView(face: face, weekday: weekday)
                    .offset(y: -70)
            }
            
            if showSecondsComplication {
                SecondsView(face: face, second: second)
                    .offset(y: 70)
            } else {
                SecondsView(face: face, second: second, showAsComplication: false)
                .zIndex(50)
            }
            
            Image("\(face)_hands_minute")
                .rotationEffect(.degrees(minute * 6))
            
            Image("\(face)_hands_hour")
                .rotationEffect(.degrees((hour * 30 + minute/2)))
            
            // Work-in-process
            if showTachymeter {
                TachymeterView(face: face)
            }
        }
    }
}

struct WatchFaceView_Previews: PreviewProvider {
    static var previews: some View {
        WatchFaceView(face: .luke, movement: .mechanical, showMonthsComplication: false, showDaysComplication: true, showSecondsComplication: true, showMilitaryTimeComplication: true, showTachymeter: true)
    }
}
