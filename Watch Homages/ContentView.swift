import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            return List {
                NavigationLink(destination: HanView(face: "han")) {
                    Text("Han Solo")
                }
                NavigationLink(destination: HanView(face: "luke")) {
                    Text("Luke Skywalker")
                }

                Text("Darth Vader")
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
