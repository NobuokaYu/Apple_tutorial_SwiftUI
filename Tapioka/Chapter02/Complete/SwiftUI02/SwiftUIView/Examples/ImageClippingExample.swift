import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("face_icon_image")
            .resizable()
            .scaledToFill()
            .frame(width: 300.0 ,height: 120.0 )
            .clipped()

    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/


// MARK: サンプル実行用コード

struct ImageClippingExample: View {
    var body: some View {
        ContentView()
    }
}

struct ImageClippingExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageClippingExample()
    }
}

