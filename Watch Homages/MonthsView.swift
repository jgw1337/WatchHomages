//
//  MonthsView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 10/23/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct MonthsView: View {
    var face: WatchFace = .luke
    var month: Double = 0
    
    var body: some View {
        return ZStack {
            Image("\(face)_watch_face_complication_month")
            
            Image("\(face)_hands_complication")
                .rotationEffect(.degrees((month * 30)))
        }
    }
}

struct MonthsView_Previews: PreviewProvider {
    static var previews: some View {
        MonthsView(face: .luke, month: 0)
    }
}
