import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.legibilityWeight) var envLegibilityWeight
    var body: some View {
        VStack {
            if envLegibilityWeight == .bold {
                Text("legibilityWeight: bold")
            } else {
                Text("legibilityWeight: regular")
            }
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

struct EnvironmentLegibilityWeightExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentLegibilityWeightExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentLegibilityWeightExample()
    }
}

