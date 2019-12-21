//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            NavigationLink(destination:
                WatchFaceView(
                    face: .han
            )) {
                Text("Han (quartz)")
            }
            NavigationLink(destination:
                WatchFaceView(
                    face: .luke
            )) {
                Text("Luke (mechanical)")
            }
            NavigationLink(destination:
                WatchFaceView(
                    face: .boba_fett
            )) {
                Text("Boba Fett (mechanical)")
            }
        }
        .navigationBarTitle(Text("Watch Faces"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
