//
//  HanFaceView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 10/25/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct HanFaceView: View {
    var month: Double = 0
    var weekday: Double = 0
    var hour: Double = 0
    var minute: Double = 0
    var secondMechanicalMovement: Double = 0
    var secondQuartzMovement: Double = 0
    var millisecondsSince1970: Double = 0
    var isWatch: Bool = true

    var body: some View {
        let face: WatchFace = .han
        let yOffset: CGFloat = isWatch ? 35 : 70
        
        return ZStack {
            FaceView(face: face)
            
            SecondsView(face: face, second: secondQuartzMovement)
                .offset(y: yOffset)

            Image("\(face)_hands_hour")
                .rotationEffect(.degrees((hour * 30 + minute / 2)))
            
            Image("\(face)_hands_minute")
                .rotationEffect(.degrees(minute * 6))
            
        }
    }
}

struct HanFaceView_Previews: PreviewProvider {
    static var previews: some View {
        HanFaceView()
    }
}
