//  Date: 10/24/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI

struct IfStatementView: View {
    @State private var count = 0
    @State private var isGoingUp = true

    var body: some View {
        VStack {
            Group {
                Text(isGoingUp ? "↗️" : "↘️")
                    .font(.system(size: 126, weight: .heavy, design: .rounded))
                    .padding(.bottom)
                Text(String(count))
                    .font(.system(size: 64, weight: .heavy, design: .rounded))
            }
            Button("Click me!") {
                isGoingUp ? increase() : decrease()
                if count > 50 {
                    isGoingUp.toggle()
                } else if count < 0 {
                    isGoingUp.toggle()
                }
            }
            .font(.title2)
            .padding(.top)
        }
    }

    func randomNum() -> Int {
        return Int.random(in: 1...10)
    }

    func increase()  {
        count += randomNum()
    }

    func decrease() {
        count -= randomNum()
    }
}

struct IfStatementView_Previews: PreviewProvider {
    static var previews: some View {
        IfStatementView()
    }
}
