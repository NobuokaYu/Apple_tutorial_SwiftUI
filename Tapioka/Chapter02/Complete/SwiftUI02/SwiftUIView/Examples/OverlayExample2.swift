import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("big-image")
            .overlay(
                Text("SwiftUI")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(),
                alignment: .top)

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

struct OverlayExample2: View {
    var body: some View {
        ContentView()
    }
}

struct OverlayExample2_Previews: PreviewProvider {
    static var previews: some View {
        OverlayExample2()
    }
}

