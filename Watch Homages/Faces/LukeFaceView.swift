//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct LukeFaceView: View {
    var month: Double = 0
    var weekday: Double = 0
    var hour: Double = 0
    var minute: Double = 0
    var second: Double = 0
    var isWatch: Bool = true
    
    @ObservedObject var thisChronometer = TheChronometer()
    @State private var isOn: Bool = false
    
    var body: some View {
        let face: WatchFace = .luke
        let xOffet: CGFloat = isWatch ? -30 : -60
        let yOffet: CGFloat = isWatch ? 35 : 70

        /*
        let xOffetPower: CGFloat = isWatch ? -30 : -60
        let yOffetPower: CGFloat = isWatch ? 35 : 70
        */
 
        let chronoSecond = self.thisChronometer.chronoSec
        //let chronoSecond: Double = 5

        return ZStack {
                FaceView(face: face)
            
            Group {
                /*
                 DaysView(face: face, weekday: weekday)
                 .offset(y: -yOffet)
                 
                 MonthsView(face: face, month: month)
                 .offset(y: yOffet)
                 */
                
                SecondsView(face: face, second: second)
                    .offset(y: yOffet)
                
                MilitaryTimeView(face: face, hour: hour)
                    .offset(x: xOffet)
            }
            
            if self.isOn {
                Group {
                    Image("\(face)_watch_face_tachymeter")

                    /*
                    Button(action: {
                        self.thisChronometer.reset()
                        print("Reset tapped!")
                    }) {
                        Image("\(face)_watch_face_tachymeter_reset")
                        
                    }
                    */
                }
                .opacity(isOn ? 1 : 0)
                .animation(.easeInOut(duration: 1.0))
            }
            
            Group {
                Image("\(face)_hands_second")
                    .rotationEffect(.degrees(chronoSecond * 6))

               /*
                Button(action: {
                    if self.isOn {
                        print("Power : Stop!")
                        self.thisChronometer.stop()
                        self.isOn = false
                    } else {
                        print("Power : Start!")
                        self.thisChronometer.start()
                        self.isOn = true
                    }
                }) {
                    Image("\(face)_watch_face_tachymeter_power")
                }
                */
                
                /*
                Button(action: {
                    self.thisChronometer.reset()
                    print("Reset tapped!")
                }) {
                    Image("\(face)_watch_face_tachymeter_reset")
                    .opacity(isOn ? 0 : 1)
                    
                }
                */
            }
        }
        .onTapGesture {
            self.isOn = true

            if !self.thisChronometer.isRunning {
                print("Power : Start!")
                self.thisChronometer.start()
            } else {
                print("Power : Stop!")
                self.thisChronometer.stop()
            }
        }
        .onLongPressGesture {
            self.isOn = false
            self.thisChronometer.reset()
        }
    }
}

struct LukeFaceView_Previews: PreviewProvider {
    static var previews: some View {
        LukeFaceView()
    }
}
