//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct WatchFaceView: View {
    @ObservedObject var thisTime = TheTime()
    
    var face: WatchFace = .han
    var showComplications: Bool = false
    var movement: WatchMovement = .quartz
    
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
            Image("\(face)_watch_face")
            
            Text(String(day))
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 47)
            
            if showComplications {
                Image("\(face)_hands_complication")
                    .rotationEffect(.degrees((weekday * 51.4)))
                    .offset(y: -35)
                
                Image("\(face)_hands_complication")
                    .rotationEffect(.degrees((month * 30)))
                    .offset(y: 35)
            }
            
            Image("\(face)_hands_minute")
                .rotationEffect(.degrees(minute * 6))
            
            Image("\(face)_hands_hour")
                .rotationEffect(.degrees((hour * 30 + minute/2)))
            
            Image("\(face)_hands_second")
                .rotationEffect(.degrees(second * 6))
        }
        .offset(y: 15)
    }
}

struct WatchFaceView_Previews: PreviewProvider {
    static var previews: some View {
        WatchFaceView(face: .luke, showComplications: true, movement: .mechanical)
    }
}
