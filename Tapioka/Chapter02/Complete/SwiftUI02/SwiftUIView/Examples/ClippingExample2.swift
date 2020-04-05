import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("face_icon_image")
            .frame(width: 100, height: 100)
            .border(Color.blue)
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

struct ClippingExample2: View {
    var body: some View {
        ContentView()
    }
}

struct ClippingExample2_Previews: PreviewProvider {
    static var previews: some View {
        ClippingExample2()
    }
}

