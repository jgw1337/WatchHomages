//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct WatchSelectionView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination:
                    WatchFaceView(
                        face: .han,
                        movement: .quartz,
                        showTachymeter: false
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
                
            }
            .navigationBarTitle(Text("Watch Faces"))
        }
    }
}

struct WatchSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        WatchSelectionView()
    }
}
