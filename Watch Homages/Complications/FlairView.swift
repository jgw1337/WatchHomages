//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct FlairView: View {
    var face: WatchFace = .boba_fett
    var second: Double = 0
    var numOfFlairs: Int = 7
    
    var body: some View {
        var imgNumber: Int
        
        // Image changes every: One second
        imgNumber = (Int(second) % numOfFlairs) + 1
        
        return ZStack {
            Image("\(face)_flair_\(imgNumber)")
                .animation(.spring())
            
            // Debugging
            /*
            Text("imgNumber: \(String(imgNumber));\nsecond: \(String(second))")
                .font(.title)
                .foregroundColor(.green)
                .frame(width:150)
                .lineLimit(5)
                .offset(x: -50)
            */
        }
    }
}

struct FlairView_Previews: PreviewProvider {
    static var previews: some View {
        FlairView()
    }
}
