//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct MilitaryTimeView: View {
    var face: WatchFace = .luke
    var hour: Double = 0
    
    var body: some View {
        return ZStack {
            Image("\(face)_watch_face_complication_24hr")
            
            Image("\(face)_hands_complication_24hr")
                .rotationEffect(.degrees((hour * 15)))
        }
    }
}

struct MilitaryTimeView_Previews: PreviewProvider {
    static var previews: some View {
        MilitaryTimeView()
    }
}
