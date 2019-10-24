//
//  ComplicationSecondsView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 10/23/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct SecondsView: View {
    @ObservedObject var thisTime = TheTime()

    var face: WatchFace = .han
    var second: Double = 0
    var showAsComplication: Bool = false

    var body: some View {
        let second = self.thisTime.secondQuartzMovement

        return ZStack{
            if showAsComplication {
                Image("\(face)_watch_face_complication_second")
            }

            Image("\(face)_hands_second")
                .rotationEffect(.degrees(second * 6))
        }
    }
}

struct SecondsView_Previews: PreviewProvider {
    static var previews: some View {
        SecondsView(face: .han, second: 0, showAsComplication: true)
    }
}
