import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            return List {
                NavigationLink(destination: WatchFaceView(face: "han", show_complications: false)) {
                    Text("Han Solo")
                }
                NavigationLink(destination: WatchFaceView(face: "luke", show_complications: true)) {
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
