//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct TachymeterView: View {
    var face: WatchFace = .han
    var millisecondsSince1970: Double


    var body: some View {
        Text("\(millisecondsSince1970)")
            .foregroundColor(.red)
            .font(.subheadline)
            .offset(x: -140, y: -150)
    }
}

struct TachymeterView_Previews: PreviewProvider {
    static var previews: some View {
        TachymeterView(face: .han, millisecondsSince1970: 35)
    }
}
