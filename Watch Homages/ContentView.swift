//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination:
                    WatchFaceView(
                        face: .han,
                        movement: .quartz,
                        showTachymeter: true
                )) {
                    Text("Han Solo (quartz)")
                }
                NavigationLink(destination:
                    WatchFaceView(
                        face: .luke,
                        movement: .mechanical,
                        showTachymeter: true
                )) {
                    Text("Luke Skywalker (mechanical)")
                }
                NavigationLink(destination:
                    WatchFaceView(
                        face: .boba_fett,
                        movement: .mechanical,
                        showTachymeter: false
                )) {
                    Text("Boba Fett (mechanical)")
                }
                NavigationLink(destination:
                    WatchFaceView(
                        face: .minority_report,
                        movement: .mechanical,
                        showTachymeter: false
                )) {
                    Text("Minority Report (mechanical)")
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
