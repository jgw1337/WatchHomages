//
//  MinorityReportView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 12/21/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct MinorityReportView: View {
    var hour: Double = 0
    var minute: Double = 0
    var second: Double = 0
    var isWatch: Bool = true
    
    var body: some View {
        let face: WatchFace = .minority_report
//        let xOffset: CGFloat = isWatch ? 47 : 94
//        let yOffset: CGFloat = isWatch ? -25 : -50
        
        return ZStack {
            FaceView(face: face)
            
            TimeView(hour: hour, minute: minute, second: second)
                .scaleEffect(0.8)
                .foregroundColor(.gray)
                .opacity(0.33)
                .offset(y: 20)

            TimeView(hour: hour, minute: minute, second: second)
                .scaleEffect(0.9)
                .foregroundColor(.gray)
                .opacity(0.66)
                .offset(y: 10)

            TimeView(hour: hour, minute: minute, second: second)
                .foregroundColor(.white)
        }
    }
}

struct MinorityReportView_Previews: PreviewProvider {
    static var previews: some View {
        MinorityReportView()
    }
}
