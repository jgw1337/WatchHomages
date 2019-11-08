//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct WatchFaceView: View {
    @State var thisChronoSec: Double = 0
    var timer = Timer.publish(every: 0.1, on: .main, in: .common)
    @State private var isChronoOn: Bool = false
    @State private var isChronoRunning: Bool = false

    @State private var thisTime = TheTime()
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
        
        let tachymeter = 3600 / self.thisChronoSec
        
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
                isWatch: false
            )
            
            Text(String(day))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 94)
            
            if self.isChronoOn {
                Text("\(tachymeter, specifier: "%.1f")")
                    .foregroundColor(.red)
                    .font(.headline)
                    .offset(x: -140, y: -150)
                    .onReceive(timer) { _ in
                        self.thisChronoSec += 0.1
                    }

                Image("\(face)_watch_face_tachymeter")
                    .opacity(self.isChronoOn ? 1 : 0)
                    .animation(.easeInOut(duration: 1.0))

            }
            
            Image("\(face)_hands_hour")
                .rotationEffect(.degrees((hour * 30 + minute / 2)))
            
            Image("\(face)_hands_minute")
                .rotationEffect(.degrees(minute * 6))
            
            Image("\(face)_hands_tachymeter")
                .rotationEffect(.degrees(self.thisChronoSec * 6))


        }
        .onTapGesture {
            self.isChronoOn = true
            self.isChronoRunning.toggle()
            if self.isChronoRunning == false {
                self.timer.connect().cancel()
            } else {
                _ = self.timer.connect()
            }
        }
        .onLongPressGesture {
            self.isChronoOn = false
            self.isChronoRunning = false
            self.thisChronoSec = 0
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

struct WatchFaceView_Previews: PreviewProvider {
    static var previews: some View {
        WatchFaceView(
            face: .boba_fett,
            movement: .mechanical,
            showTachymeter: false
        )
    }
}
