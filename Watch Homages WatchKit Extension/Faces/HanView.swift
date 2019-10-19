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
    
    var body: some View {
        let hours = self.thisTime.hour
        let minutes = self.thisTime.minute
        let seconds = self.thisTime.second
        
        let day = self.thisTime.day
        
        return ZStack {
            Image("han_solo_watch_face")
            
            Text(String(day))
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 47)
            
            Image("minuteHand")
                .offset(y: -35)
                .frame(width: 22, height: 164)
                .rotationEffect(.degrees(minutes * 6))
            
            Image("hourHand")
                .offset(y: -20)
                .frame(width: 22, height: 104)
                .rotationEffect(.degrees((hours * 30 + minutes/2)))
            
            Image("secondHand")
                .offset(y: -70)
                .rotationEffect(.degrees(seconds * 6))
        }
        .offset(y: 15)
    }
}

struct HanView_Previews: PreviewProvider {
    static var previews: some View {
        HanView()
    }
}
