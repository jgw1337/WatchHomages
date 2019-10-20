//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            return List {
                NavigationLink(destination: WatchFaceView(face: .han, showComplications: false, movement: .quartz)) {
                    Text("Han Solo (quartz)")
                }
                NavigationLink(destination: WatchFaceView(face: .han, showComplications: false, movement: .mechanical)) {
                    Text("Han Solo (mechanical)")
                }
                NavigationLink(destination: WatchFaceView(face: .luke, showComplications: true, movement: .quartz)) {
                    Text("Luke Skywalker (quartz)")
                }
                NavigationLink(destination: WatchFaceView(face: .luke, showComplications: true, movement: .mechanical)) {
                    Text("Luke Skywalker (mechanical)")
                }
            }
        .navigationBarTitle(Text("Watch Faces"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
