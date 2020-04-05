import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("SwiftUIを学ぶ")
            .font(.largeTitle)

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

struct LargeTitleExample: View {
    var body: some View {
        ContentView()
    }
}

struct LargeTitleExample_Previews: PreviewProvider {
    static var previews: some View {
        LargeTitleExample()
    }
}

