//
//  FaceView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 10/25/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct FaceView: View {
    var face: WatchFace = .han

    var body: some View {
        ZStack {
            Image("\(face)_background")
            Image("\(face)_watch_face")
        }
    }
}

struct FaceView_Previews: PreviewProvider {
    static var previews: some View {
        FaceView()
    }
}
