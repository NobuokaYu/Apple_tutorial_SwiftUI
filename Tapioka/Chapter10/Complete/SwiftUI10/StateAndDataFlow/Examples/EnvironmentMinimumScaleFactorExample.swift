import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.minimumScaleFactor) var envMinimumScaleFactor
    var body: some View {
        VStack {
            Text("minimumScaleFactor: \(envMinimumScaleFactor)")
            Divider()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .lineLimit(5)
            Divider()
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.minimumScaleFactor, 0.5)
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentMinimumScaleFactorExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentMinimumScaleFactorExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentMinimumScaleFactorExample()
            .environment(\.minimumScaleFactor, 0.5)
    }
}

