import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.displayScale) var envDisplayScale
    var body: some View {
        Text("displayScale \(envDisplayScale)")
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

struct EnvironmentDisplayScaleExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentDisplayScaleExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentDisplayScaleExample()
    }
}

