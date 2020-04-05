import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.defaultMinListRowHeight) var height
    var body: some View {
        List {
            Section(header: Text("ヘッダ")) {
                Text("defaultMinListRowHeight: \(height)")
            }
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.defaultMinListRowHeight, 100)
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentDefaultMinListRowHeightExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentDefaultMinListRowHeightExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentDefaultMinListRowHeightExample()
            .environment(\.defaultMinListRowHeight, 100)

    }
}

