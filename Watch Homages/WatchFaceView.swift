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

    var numberOfFlairComplications: Int = 0

    var showTachymeter: Bool = false
    
    var body: some View {
        let month: Double = self.thisTime.month
        let weekday: Double = self.thisTime.weekday
        
        let hour: Double = self.thisTime.hour
        let minute: Double = self.thisTime.minute
        let second: Double = movement == .mechanical ?
            self.thisTime.secondMecahnicalMovement :
            self.thisTime.secondQuartzMovement
        
        let day: Int = self.thisTime.day
        
        return ZStack {
            FaceView(face: face)

            Text(String(day))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 94)

            if numberOfFlairComplications > 0 {
                FlairView(face: face, second: second, numOfFaces: 7)
                    .offset(x: 94, y: -50)
            }
            
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

            Image("\(face)_hands_hour")
                .rotationEffect(.degrees((hour * 30 + minute / 2)))
            
            Image("\(face)_hands_minute")
                .rotationEffect(.degrees(minute * 6))

            // Work-in-process
            if showTachymeter {
                TachymeterView(face: face)
            }
        }
    }
}

struct WatchFaceView_Previews: PreviewProvider {
    static var previews: some View {
/*
        WatchFaceView(
            face: .luke,
            movement: .mechanical,
            showMonthsComplication: false,
            showDaysComplication: true,
            showSecondsComplication: true,
            showMilitaryTimeComplication: true,
            showTachymeter: true
        )
*/
        WatchFaceView(
            face: .boba_fett,
            movement: .quartz,
            showMonthsComplication: false,
            showDaysComplication: false,
            showSecondsComplication: false,
            showMilitaryTimeComplication: false,
            numberOfFlairComplications: 7,
            showTachymeter: false
        )
    }
}
