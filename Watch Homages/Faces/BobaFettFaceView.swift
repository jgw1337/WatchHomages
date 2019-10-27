//
//  BobaFettFaceView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 10/25/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct BobaFettFaceView: View {
    var month: Double = 0
    var weekday: Double = 0
    var hour: Double = 0
    var minute: Double = 0
    var second: Double = 0
    var isWatch: Bool = true

    var body: some View {
        let face: WatchFace = .boba_fett
        let xOffset: CGFloat = isWatch ? 47 : 94
        let yOffset: CGFloat = isWatch ? -25 : -50
        
        return ZStack {
            FaceView(face: face)
            
            FlairView(face: face, second: second, numOfFlairs: 7)
                .offset(x: xOffset, y: yOffset)
            
            Image("\(face)_hands_hour")
                .rotationEffect(.degrees((hour * 30 + minute / 2)))
            
            Image("\(face)_hands_minute")
                .rotationEffect(.degrees(minute * 6))
            
            SecondsView(face: face, second: second, showAsComplication: false)
                .zIndex(50)
        }
    }
}

struct BobaFettFaceView_Previews: PreviewProvider {
    static var previews: some View {
        BobaFettFaceView()
    }
}
