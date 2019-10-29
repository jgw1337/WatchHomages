//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    /*
    @State private var myTime = 0
    @State private var myTime2 = 0
    var timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    var timer2 = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    */
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

                /*
                Text("\(self.myTime)")
                    .font(.largeTitle)
                    .foregroundColor(.red)

                Text("\(self.myTime2)")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                .onReceive(timer, perform: {_ in
                    self.myTime2 += 1
                })
                */
            }
            .navigationBarTitle(Text("Watch Faces"))
        }
        /*
        .onReceive(timer, perform: {_ in
            self.myTime += 1
        })
        */
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
