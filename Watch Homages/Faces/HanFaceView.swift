//
//  HanFaceView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 10/25/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct HanFaceView: View {
    var second: Double = 0
    var isWatch: Bool = true

    var body: some View {
        let face: WatchFace = .han
        let yOffset: CGFloat = isWatch ? 35 : 70

        return ZStack {
            FaceView(face: face)

            SecondsView(face: face, second: second)
                .offset(y: yOffset)
        }
    }
}

struct HanFaceView_Previews: PreviewProvider {
    static var previews: some View {
        HanFaceView()
    }
}
