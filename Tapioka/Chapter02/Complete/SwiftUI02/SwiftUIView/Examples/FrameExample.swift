import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .frame(width: 200,
                   height: 100,
                   alignment: .bottomLeading)

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

struct FrameExample: View {
    var body: some View {
        ContentView()
    }
}

struct FrameExample_Previews: PreviewProvider {
    static var previews: some View {
        FrameExample()
    }
}

