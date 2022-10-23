//  Date: 10/23/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Place(place: "toronto", title: "CN Tower", caption: "Toronto")
            Place(place: "london", title: "Big Ben", caption: "London")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
