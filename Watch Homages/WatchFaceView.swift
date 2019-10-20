import SwiftUI

struct WatchFaceView: View {
    @ObservedObject var thisTime = TheTime()
    
    var face = "han"
    var show_complications: Bool
    
    var body: some View {
        let month = self.thisTime.month
        let weekday = self.thisTime.weekday
        
        let hours = self.thisTime.hour
        let minutes = self.thisTime.minute
        let seconds = self.thisTime.second
        
        let day = self.thisTime.day
        
        return ZStack {
            Image("\(face)_background")
            
            Image("\(face)_watch_face_circle")
            
            Text(String(day))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 93)
            
            if show_complications {
                Image("\(face)_hands_complication")
                    .rotationEffect(.degrees((weekday * 51.4)))
                    .offset(y: -70)
                
                Image("\(face)_hands_complication")
                    .rotationEffect(.degrees((month * 30)))
                    .offset(y: 70)
            }
            
            Image("\(face)_hands_minute")
                .rotationEffect(.degrees(minutes * 6))
            
            Image("\(face)_hands_hour")
                .rotationEffect(.degrees((hours * 30 + minutes/2)))
            
            Image("\(face)_hands_second")
                .rotationEffect(.degrees(seconds * 6))
        }
    }
}

struct HanView_Previews: PreviewProvider {
    static var previews: some View {
        WatchFaceView(face: "luke", show_complications: true)
    }
}
