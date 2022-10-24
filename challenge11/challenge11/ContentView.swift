//  Date: 10/24/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI

struct ContentView: View {
    @State private var player = (card: "back", score: 0)
    @State private var cpu = (card: "back", score: 0)
    
    var body: some View {
        VStack {
            Spacer()
            Image("logo")
            Spacer()
            HStack {
                Spacer()
                Image(player.card)
                Spacer()
                Image(cpu.card)
                Spacer()
            }
            Spacer()
            Button(action: {
                
                // generate random number between 2 to 14
                let playerRand = randomNum()
                let cpuRand = randomNum()
                
                // update cards
                player.card = "card\(playerRand)"
                cpu.card = "card\(cpuRand)"
                
            }) {
                Image("dealbutton")
            }
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("Player")
                        .padding()
                    Text(String(player.score))
                }
                Spacer()
                VStack {
                    Text("CPU")
                        .padding()
                    Text(String(cpu.score))
                }
                Spacer()
            }
            .foregroundColor(.white)
            .font(.title2)
            Spacer()
        }
        .background(Image("background"))
    }
    
    func randomNum() -> String {
        return String(Int.random(in: 2...14))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
