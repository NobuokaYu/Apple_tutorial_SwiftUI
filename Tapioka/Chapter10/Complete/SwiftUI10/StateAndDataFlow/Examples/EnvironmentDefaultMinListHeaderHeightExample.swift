import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.defaultMinListHeaderHeight) var height
    var body: some View {
        List {
            Section(header: Text("ヘッダ")) {
                Text("defaultMinListHeaderHeight: \(height ?? 0)")
            }
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.defaultMinListHeaderHeight, 100)
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentDefaultMinListHeaderHeightExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentDefaultMinListHeaderHeightExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentDefaultMinListHeaderHeightExample()
            .environment(\.defaultMinListHeaderHeight, 100)

    }
}

