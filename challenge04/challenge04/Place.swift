//  Date: 10/23/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI

struct Place: View {
    var place: String
    var title: String
    var caption: String
    
    init(place: String, title: String, caption: String) {
        self.place = place
        self.title = title
        self.caption = caption
    }
    
    var body: some View {
        ZStack {
            Image(place)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
            VStack {
                Text(title)
                    .font(.largeTitle)
                Text(caption)
                    .font(.caption)
            }
            .padding()
            .foregroundColor(.white)
            .background(.black)
            .opacity(0.8)
            .cornerRadius(10)
        }
        .padding()
    }
}


struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        Place(place: "toronto", title: "CN Tower", caption: "Toronto")
    }
}
