//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct WatchFaceView: View {
    @ObservedObject private var thisTime = TheTime()
    @ObservedObject private var thisChrono = TheChronometer()

    var face: WatchFace = .han
    
    var body: some View {
        let month: Double = self.thisTime.month
        let weekday: Double = self.thisTime.weekday
        
        let hour: Double = self.thisTime.hour
        let minute: Double = self.thisTime.minute
        let secondMechanicalMovement: Double = self.thisTime.secondMechanicalMovement
        let secondQuartzMovement: Double = self.thisTime.secondQuartzMovement

        let day: Int = self.thisTime.day
        
        let millisecondsSince1970: Double = self.thisChrono.millisecondsSince1970
        
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
                secondMechanicalMovement: secondMechanicalMovement,
                secondQuartzMovement: secondQuartzMovement,
                day: day,
                millisecondsSince1970: millisecondsSince1970,
                isWatch: false
            )
            
            Text(String(day))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 94)

        }
    }
}

struct WatchFaceView_Previews: PreviewProvider {
    static var previews: some View {
        WatchFaceView(
            face: .boba_fett
        )
    }
}
