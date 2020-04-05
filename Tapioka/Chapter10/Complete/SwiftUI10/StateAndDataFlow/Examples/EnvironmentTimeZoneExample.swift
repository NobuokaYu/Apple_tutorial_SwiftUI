import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.timeZone) var envTimeZone
    var body: some View {
        Text(envTimeZone.identifier)
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

struct EnvironmentTimeZoneExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentTimeZoneExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentTimeZoneExample()
    }
}

