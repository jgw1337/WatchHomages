import SwiftUI

struct HanView: View {
    @ObservedObject var thisTime = TheTime()

    var body: some View {
        let hours = self.thisTime.hour
        let minutes = self.thisTime.minute
        let seconds = self.thisTime.second

        let day = self.thisTime.day

        return ZStack {
            Image("background")

            Image("watch_face")

            Text(String(day))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 93)

            Image("minuteHand")
                .offset(y: -78)
                .frame(width: 22, height: 164)
                .rotationEffect(.degrees(minutes * 6))

            Image("hourHand")
                .offset(y: -48)
                .frame(width: 22, height: 104)
                .rotationEffect(.degrees((hours * 30 + minutes/2)))

            Image("secondHand")
                .offset(y: -140)
                .rotationEffect(.degrees(seconds * 6))
        }
    }
}

struct HanView_Previews: PreviewProvider {
    static var previews: some View {
        HanView()
    }
}
