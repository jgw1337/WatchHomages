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
                
                SecondsView(face: face, second: second)
                    .offset(y: yOffet)
                
                MilitaryTimeView(face: face, hour: hour)
                    .offset(x: xOffet)
            }
        }
    }
}

struct LukeFaceView_Previews: PreviewProvider {
    static var previews: some View {
        LukeFaceView()
    }
}
