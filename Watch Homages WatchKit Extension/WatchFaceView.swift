//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct WatchFaceView: View {
    @ObservedObject var thisTime = TheTime()
    
    var face: WatchFace = .han
    var movement: WatchMovement = .quartz
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
        
        /*
        For screenshots
        let hour: Double = 10
        let minute: Double = 10
        let second: Double = 0
        let day: Int = 15
        */
        
        return ZStack {
            GetFaceView(
                face: face,
                month: month,
                weekday: weekday,
                hour: hour,
                minute: minute,
                second: second,
                day: day,
                isWatch: true
            )
            
            Text(String(day))
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 47)
            
            Image("\(face)_hands_hour")
                .rotationEffect(.degrees((hour * 30 + minute / 2)))
            
            Image("\(face)_hands_minute")
                .rotationEffect(.degrees(minute * 6))
            
            // TODO: Temporary kludge to ensure Fett's second hand is on top
            if face == .boba_fett || face == .minority_report {
                SecondsView(face: face, second: second, showAsComplication: false)
                    .zIndex(50)
            }

            // TODO: Work-in-process
            if showTachymeter {
                TachymeterView(face: face)
            }
        }
        .offset(y: 15)
    }
}

struct WatchFaceView_Previews: PreviewProvider {
    static var previews: some View {
        WatchFaceView(
            face: .boba_fett,
            movement: .quartz,
            showTachymeter: false
        )
    }
}
