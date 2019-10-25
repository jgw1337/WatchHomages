//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct TachymeterView: View {
    var face: WatchFace = .han

    var body: some View {
        Image("\(face)_hands_second")
    }
}

struct TachymeterView_Previews: PreviewProvider {
    static var previews: some View {
        TachymeterView()
    }
}
