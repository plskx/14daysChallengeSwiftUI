//  Date: 10/24/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI

struct BtnChallengeView: View {
    var body: some View {
        HStack {
            Spacer()
            Button("Text Button") {
                print("text btn was clicked!")
            }
            Spacer()
            Button(action: {
                print("custom btn was clicked!")
            }) {
                HStack {
                    Image(systemName: "play.fill")
                    Text("Custom Button")
                }
            }
            Spacer()
        }
    }
}

struct BtnChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        BtnChallengeView()
    }
}
