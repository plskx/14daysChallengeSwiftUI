//  Date: 10/24/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("logo")
            Spacer()
            HStack {
                Spacer()
                Image("card3")
                Spacer()
                Image("card4")
                Spacer()
            }
            Spacer()
            Button(action: {}) {
                Image("dealbutton")
            }
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("Player")
                        .padding()
                    Text("0")
                }
                Spacer()
                VStack {
                    Text("CPU")
                        .padding()
                    Text("0")
                }
                Spacer()
            }
            .foregroundColor(.white)
            .font(.title2)
            Spacer()
        }
        .background(Image("background"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            BtnChallengeView()
        }
    }
}
