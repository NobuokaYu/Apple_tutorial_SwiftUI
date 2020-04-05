import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.accessibilityEnabled) var accessibilityEnabled
    var body: some View {
        Text("accessibilityEnabled: \(accessibilityEnabled ? "True" : "False")")
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.accessibilityEnabled, true)
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentAccessibilityEnabledExample: View {
    var body: some View {
        ContentView()
            
    }
}

struct EnvironmentAccessibilityEnabledExample_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.accessibilityEnabled, true)
    }
}

