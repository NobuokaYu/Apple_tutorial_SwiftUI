import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.horizontalSizeClass) var hSizeClass
    @Environment(\.verticalSizeClass) var vSizeClass
    var body: some View {
        HStack {
            Text("\(vSizeClass == .compact ? "Compact" : "Regular") width, ")
            Text("\(hSizeClass == .compact ? "compact" : "regular") height")
        }
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

struct EnvironmentSizeClassExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentSizeClassExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentSizeClassExample()
    }
}

