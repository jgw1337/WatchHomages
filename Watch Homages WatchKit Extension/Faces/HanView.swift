//
//  HanView.swift
//  Watch Homages WatchKit Extension
//
//  Created by Dilek Sanver-Wang on 10/18/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct HanView: View {
    @ObservedObject var thisTime = TheTime()
    
    var face: String
    
    var body: some View {
        let hours = self.thisTime.hour
        let minutes = self.thisTime.minute
        let seconds = self.thisTime.second
        
        let day = self.thisTime.day
        
        return ZStack {
            Image("\(face)_watch_face")
            
            Text(String(day))
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 47)
            
            Image("\(face)_hands_minute")
                .rotationEffect(.degrees(minutes * 6))
            
            Image("\(face)_hands_hour")
                .rotationEffect(.degrees((hours * 30 + minutes/2)))
            
            Image("\(face)_hands_second")
                .rotationEffect(.degrees(seconds * 6))
        }
        .offset(y: 15)
    }
}

struct HanView_Previews: PreviewProvider {
    static var previews: some View {
        HanView(face: "han")
    }
}
