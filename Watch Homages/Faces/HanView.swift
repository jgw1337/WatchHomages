import SwiftUI

struct HanView: View {
    @ObservedObject var thisTime = TheTime()
    
    var face = "han"

    var body: some View {
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
        HanView(face: "luke")
    }
}
