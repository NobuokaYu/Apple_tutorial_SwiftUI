import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .font(.largeTitle)
            .background(
                Image("face_icon_image"))

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

struct BackgroundExample: View {
    var body: some View {
        ContentView()
    }
}

struct BackgroundExample_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundExample()
    }
}

