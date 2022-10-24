//  Date: 10/24/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI
import ConfettiSwiftUI

struct ContentView: View {
    @State private var score = 500
    @State private var isGameOver = false
    @State private var perfectMatch = 0
    @State private var slots = (left: 1, mid: 1, right: 1)
    
    var body: some View {
        VStack {
            Spacer()
            
            if !isGameOver {
                Text("SwiftUI Slots!")
                    .font(.system(size: 36, weight: .heavy, design: .rounded))
            } else {
                Text("Game Over!")
                    .font(.system(size: 36, weight: .heavy, design: .rounded))
                    .foregroundColor(.red)
                    .padding(10)
                    .cornerRadius(20)
            }
            Spacer()
            Text("Credits: \(score)")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .confettiCannon(
                    counter: $perfectMatch,
                    num: 35,
                    openingAngle: Angle(degrees: 0),
                    closingAngle: Angle(degrees: 360),
                    radius: 200
                )
            
            Spacer()
            
            HStack {
                Image("fruit\(String(slots.left))")
                    .resizable()
                    .scaledToFit()
                Image("fruit\(String(slots.mid))")
                    .resizable()
                    .scaledToFit()
                Image("fruit\(String(slots.right))")
                    .resizable()
                    .scaledToFit()
            }
            .padding()
            Spacer()
            
            Button(action: {
                if (isGameOver) {
                    restart()
                    return
                }
                // randomize slots
                let leftRand = randomNumber()
                let midRand = randomNumber()
                let rightRand = randomNumber()
                
                // update slots
                slots.left = leftRand
                slots.mid = midRand
                slots.right = rightRand
                
                // update score
                if (leftRand == midRand) && (midRand == rightRand) {
                    score += 100
                    perfectMatch += 1
                } else {
                    score -= 50
                }
                
                if score <= 0 {
                    gameReset()
                }
            }, label: {
                Text(!isGameOver ? "Spin" : "Restart")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .frame(width: 130, height: 65)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            })
            Spacer()
        }
        .padding()
    }
    
    func randomNumber() -> Int {
        return Int.random(in: 1...3)
    }
    
    func gameReset() {
        isGameOver = true
        slots.left = 1
        slots.mid = 1
        slots.right = 1
    }
    
    func restart() {
        isGameOver = false
        score = 500
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
