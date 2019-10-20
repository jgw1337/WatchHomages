import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            return List {
                NavigationLink(destination: WatchFaceView(face: "han", showComplications: false, movement: WatchMovement.quartz)) {
                    Text("Han Solo")
                }
                NavigationLink(destination: WatchFaceView(face: "luke", showComplications: true, movement: WatchMovement.mecahnical)) {
                    Text("Luke Skywalker")
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
