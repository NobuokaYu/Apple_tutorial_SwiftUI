import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text(String(repeating: "Hello World ",
                    count: 20))
            .lineLimit(3)

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

struct LineLimitExample: View {
    var body: some View {
        ContentView()
    }
}

struct LineLimitExample_Previews: PreviewProvider {
    static var previews: some View {
        LineLimitExample()
    }
}

