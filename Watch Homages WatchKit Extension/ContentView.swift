//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            NavigationLink(destination:
                WatchFaceView(
                    face: .han,
                    movement: .quartz,
                    showTachymeter: true
            )) {
                Text("Han (quartz)")
            }
            NavigationLink(destination:
                WatchFaceView(
                    face: .luke,
                    movement: .mechanical,
                    showTachymeter: true
            )) {
                Text("Luke (mechanical)")
            }
            NavigationLink(destination:
                WatchFaceView(
                    face: .boba_fett,
                    movement: .mechanical,
                    showTachymeter: false
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
