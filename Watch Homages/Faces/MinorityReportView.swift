//
//  MinorityReportView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 12/21/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct MinorityReportView: View {
    var second: Double = 0
    var isWatch: Bool = true
    
    var body: some View {
        let face: WatchFace = .minority_report
        let xOffset: CGFloat = isWatch ? 47 : 94
        let yOffset: CGFloat = isWatch ? -25 : -50
        
        return ZStack {
            FaceView(face: face)
        }
    }
}

struct MinorityReportView_Previews: PreviewProvider {
    static var previews: some View {
        MinorityReportView()
    }
}
