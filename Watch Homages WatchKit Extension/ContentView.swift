//
//  ContentView.swift
//  Watch Homages WatchKit Extension
//
//  Created by Dilek Sanver-Wang on 10/18/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
