//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct SecondsView: View {
    var face: WatchFace = .han
    var second: Double = 0
    var showAsComplication: Bool = true

    var body: some View {
        return ZStack{
            if showAsComplication {
                Image("\(face)_watch_face_complication_second")

                Image("\(face)_hands_complication")
                    .rotationEffect(.degrees(second * 6))
            } else {
                Image("\(face)_hands_second")
                    .rotationEffect(.degrees(second * 6))
            }
        }
    }
}

struct SecondsView_Previews: PreviewProvider {
    static var previews: some View {
        SecondsView(face: .han, second: 0, showAsComplication: true)
    }
}
