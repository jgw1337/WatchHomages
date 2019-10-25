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
                        showSecondsComplication: true,
                        numberOfFlairComplications: 0,
                        showTachymeter: true
                )) {
                Text("Han (quartz)")
            }
            NavigationLink(destination:
                    WatchFaceView(
                        face: .luke,
                        movement: .mechanical,
                        showDaysComplication: true,
                        showSecondsComplication: true,
                        showMilitaryTimeComplication: true,
                        numberOfFlairComplications: 0,
                        showTachymeter: true
                )) {
                Text("Luke (mechanical)")
            }
            NavigationLink(destination:
                WatchFaceView(
                    face: .boba_fett,
                    movement: .quartz,
                    numberOfFlairComplications: 7
            )) {
                Text("Boba Fett (quartz)")
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
