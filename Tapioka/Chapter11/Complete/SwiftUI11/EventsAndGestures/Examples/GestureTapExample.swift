import SwiftUI

fileprivate
struct ContentView: View {
    @State var opacity = 1.0
    var body: some View {
        Image("big-image")
            .opacity(opacity)
            .gesture(
                TapGesture()
                    .onEnded{ _ in
                        self.opacity -= 0.1
                    }
            )
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

struct GestureTapExample: View {
    var body: some View {
        ContentView()
    }
}

struct GestureTapExample_Previews: PreviewProvider {
    static var previews: some View {
        GestureTapExample()
    }
}

