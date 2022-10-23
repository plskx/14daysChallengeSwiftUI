//  Date: 10/23/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView {
                Place(place: "japan", title: "Tokyo", caption: "Japan")
                Place(place: "toronto", title: "CN Tower", caption: "Toronto")
                Place(place: "london", title: "Big Ben", caption: "London")
                Place(place: "france", title: "Paris", caption: "France")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
