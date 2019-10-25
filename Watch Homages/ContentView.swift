//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            return List {
                NavigationLink(destination: WatchFaceView(face: .han, movement: .quartz, showMonthsComplication: false, showDaysComplication: false, showSecondsComplication: true, showTachymeter: true)) {
                    Text("Han Solo (quartz)")
                }
                NavigationLink(destination: WatchFaceView(face: .luke, movement: .mechanical, showMonthsComplication: false, showDaysComplication: true, showSecondsComplication: true, showMilitaryTimeComplication: true, showTachymeter: true)) {
                    Text("Luke Skywalker (mechanical)")
                }
                NavigationLink(destination: WatchFaceView(face: .boba_fett, movement: .quartz)) {
                    Text("Boba Fett (quartz)")
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
