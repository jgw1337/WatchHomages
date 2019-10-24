//
//  DaysView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 10/23/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct DaysView: View {
    var face: WatchFace = .han
    var weekday: Double = 0
    
    var body: some View {
        return ZStack {
            Image("\(face)_watch_face_complication_day")
            
            Image("\(face)_hands_complication")
                .rotationEffect(.degrees((weekday * 51.4)))
        }
    }
}

struct DaysView_Previews: PreviewProvider {
    static var previews: some View {
        DaysView(face: .luke, weekday: 0)
    }
}
