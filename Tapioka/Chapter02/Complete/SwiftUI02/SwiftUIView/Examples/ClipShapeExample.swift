import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("sakura_image")
            .clipShape(Circle())

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

struct ClipShapeExample: View {
    var body: some View {
        ContentView()
    }
}

struct ClipShapeExample_Previews: PreviewProvider {
    static var previews: some View {
        ClipShapeExample()
    }
}

