//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct FlairView: View {
    var face: WatchFace = .boba_fett
    var second: Double = 0
    var numOfFlairs: Int = 7
    
    var body: some View {
        //TODO: Currently changes every second; can I set it to change every 4 secs?
        var imgNumber = Int(second) % numOfFlairs
        imgNumber = imgNumber < 1 ? 1 : imgNumber
        imgNumber = imgNumber > numOfFlairs ? numOfFlairs : imgNumber

        return ZStack {
            Image("\(face)_flair_\(imgNumber)")
                .animation(.spring())
        }
    }
}

struct FlairView_Previews: PreviewProvider {
    static var previews: some View {
        FlairView()
    }
}
