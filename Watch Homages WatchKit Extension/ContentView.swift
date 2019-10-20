//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            NavigationLink(destination: WatchFaceView(face: .han, showComplications: false, movement: .quartz)) {
                Text("Han (quartz)")
            }
            NavigationLink(destination: WatchFaceView(face: .han, showComplications: false, movement: .mechanical)) {
                Text("Han (mechanical)")
            }
            NavigationLink(destination: WatchFaceView(face: .luke, showComplications: true, movement: .quartz)) {
                Text("Luke (quartz)")
            }
            NavigationLink(destination: WatchFaceView(face: .luke, showComplications: true, movement: .mechanical)) {
                Text("Luke (mechanical)")
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
