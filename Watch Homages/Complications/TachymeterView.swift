//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct TachymeterView: View {
    @State private var isOn: Bool = false
    
    var face: WatchFace = .luke
    
    var body: some View {
        ZStack {
            if isOn {
                ZStack {
                    Image("\(face)_watch_face_tachymeter")
                        .transition(.opacity)
                        .zIndex(5)
                    
                    Image("\(face)_watch_face_tachymeter_reset")
                }
            }
            
            Group {
                Image("\(face)_hands_second")
                
                Image("\(face)_watch_face_tachymeter_power")
                
                Button(action: {
                    print("Power tapped!")
                    self.isOn.toggle()
                }) {
                    Text("Power")
                }
                .offset(x: 140, y: -150)
                
                Button(action: {
                    print("Reset tapped!")
                }) {
                    Text("Reset")
                }
                .offset(x: 140, y: 150)
            }
        }
    }
}

struct TachymeterView_Previews: PreviewProvider {
    static var previews: some View {
        TachymeterView()
    }
}
