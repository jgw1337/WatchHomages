//
//  BobaFettFaceView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 10/25/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct BobaFettFaceView: View {
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
            
            // TODO: The second hand (in this view) appears below the min/hr hands (in the parent view)
            /*
            SecondsView(face: face, second: second, showAsComplication: false)
                .zIndex(100)
            */
        }
    }
}

struct BobaFettFaceView_Previews: PreviewProvider {
    static var previews: some View {
        BobaFettFaceView()
    }
}
