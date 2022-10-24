//  Date: 10/24/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI

struct StateChallengeView: View {
    @State private var count = 0
    
    var body: some View {
        VStack {
            Text(String(count))
                .font(.system(size: 64, weight: .heavy, design: .rounded))
            HStack {
                Spacer()
                Button("Increase") {
                    count += 1
                }
                Spacer()
                Button("Times 2") {
                    count *= 2
                }
                Spacer()
            }
            .padding()
            .font(.title3)
            
            Button("Reset") {
                count = 0
            }
        }
        .padding()
    }
}

struct StateChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        StateChallengeView()
    }
}
