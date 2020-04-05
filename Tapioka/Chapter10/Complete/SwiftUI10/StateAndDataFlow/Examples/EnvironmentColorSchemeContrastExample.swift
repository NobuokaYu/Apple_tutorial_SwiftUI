import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.colorSchemeContrast) var envColorSchemeContrast
    var body: some View {
        VStack{
            if envColorSchemeContrast == .increased {
                Text("colorSchemeContrast increased")
            } else if envColorSchemeContrast == .standard {
                Text("colorSchemeContrast standard")
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

struct EnvironmentColorSchemeContrastExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentColorSchemeContrastExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentColorSchemeContrastExample()
    }
}

