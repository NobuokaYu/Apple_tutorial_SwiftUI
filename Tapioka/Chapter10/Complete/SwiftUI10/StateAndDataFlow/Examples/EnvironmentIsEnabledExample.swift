import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.isEnabled) var envIsEnabled
    @State private var value: Double = 0
    var body: some View {
        VStack {
            HStack {
                Text("isEnabled: ")
                Text(envIsEnabled ? "True" : "False")
            }
            HStack {
                Text("\(value)")
                Slider(value: $value, in: -100...100, step: 0.1)
            }
        }
    }
}
/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.isEnabled, false)
    }
}
 */


// MARK: サンプル実行用コード

struct EnvironmentIsEnabledExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentIsEnabledExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentIsEnabledExample()
            .environment(\.isEnabled, false)
    }
}

