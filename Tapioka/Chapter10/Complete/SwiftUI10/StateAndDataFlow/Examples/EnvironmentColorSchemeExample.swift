import SwiftUI

fileprivate
struct ContentView: View {
        @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            if colorScheme == .dark {
                Text("Dark Mode")
            } else {
                Text("Light Mode")
            }
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentColorSchemeExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentColorSchemeExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentColorSchemeExample()
            .environment(\.colorScheme, .dark)
        
    }
}

