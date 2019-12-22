//
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct TimeView: View {
    var hour: Double = 0
    var minute: Double = 0
    var second: Double = 0
    
    var body: some View {
        
        return HStack(alignment: .firstTextBaseline, spacing: 0) {
            Spacer()
            
            Text(String(Int(hour)))
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text("HR")
                .font(.system(size: 10))

            Text(String(Int(minute)))
                .font(.system(size: 24))
                .fontWeight(.bold)
                .padding(.leading, 3)

            Text("M")
                .font(.subheadline)

            Text(String(Int(second)))
                .font(.subheadline)
                .fontWeight(.bold)
                .padding(.leading, 3)

            Text("SEC")
                .font(.system(size: 12))

            Spacer()
        }

    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
