import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.lineLimit) var envLineLimit
    var body: some View {
        Text("lineLimit: \(envLineLimit ?? 0)")
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

struct EnvironmentLineLimitExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentLineLimitExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentLineLimitExample()
    }
}

