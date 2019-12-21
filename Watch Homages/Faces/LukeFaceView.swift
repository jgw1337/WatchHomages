//
//  LukeFaceView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 10/25/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct LukeFaceView: View {
    var month: Double = 0
    var weekday: Double = 0
    var hour: Double = 0
    var minute: Double = 0
    var secondMechanicalMovement: Double = 0
    var secondQuartzMovement: Double = 0
    var millisecondsSince1970: Double = 0
    var isWatch: Bool = true

    @State private var isTachOn: Bool = false
    @State private var isTachRunning: Bool = false
    @State private var chronoStart: Double = 0
    @State private var chronoSec: Double = 0
    
    var body: some View {
        let face: WatchFace = .luke
        let xOffet: CGFloat = isWatch ? -30 : -60
        let yOffet: CGFloat = isWatch ? 35 : 70

        return ZStack {
            FaceView(face: face)

            Group {
                DaysView(face: face, weekday: weekday)
                    .offset(y: -yOffet)

                /*
                MonthsView(face: face, month: month)
                    .offset(y: yOffet)
                */
                
                SecondsView(face: face, second: secondMechanicalMovement)
                    .offset(y: yOffet)

                MilitaryTimeView(face: face, hour: hour)
                    .offset(x: xOffet)
            }

            Image("\(face)_watch_face_tachymeter")
                .opacity(self.isTachOn ? 1 : 0)
                .animation(.easeInOut(duration: 1.0))
            
            Image("\(face)_hands_hour")
                .rotationEffect(.degrees((hour * 30 + minute / 2)))
            
            Image("\(face)_hands_minute")
                .rotationEffect(.degrees(minute * 6))

            Image("\(face)_hands_tachymeter")
                .rotationEffect(.degrees(self.chronoSec * 6))
            
            Text("\(millisecondsSince1970, specifier: "%.1f")")
                .foregroundColor(.red)
                .font(.subheadline)
                .offset(x: -140, y: -150)

        }
        .onTapGesture {
            self.isTachOn = true
            self.isTachRunning.toggle()
        }
        .onLongPressGesture {
            self.isTachOn = false
        }
    }
    
    func getTime() {
        self.chronoSec = self.millisecondsSince1970 - self.chronoStart
    }
}

struct LukeFaceView_Previews: PreviewProvider {
    static var previews: some View {
        LukeFaceView()
    }
}
