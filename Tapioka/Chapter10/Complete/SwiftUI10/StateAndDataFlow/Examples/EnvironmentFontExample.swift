import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.font) var envFont: Font?

    var body: some View {
        VStack {
            Text("SwiftUI!")
            Text("SwiftUI!")
                .font(envFont?.lowercaseSmallCaps())
            Text("SwiftUI!")
                .font(envFont?.uppercaseSmallCaps())
        }
    }
}


/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.font, .system(
                size: 40,
                weight: .ultraLight,
                design: .rounded))
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentFontExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentFontExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentFontExample()
            .environment(\.font, .system(
                size: 40,
                weight: .ultraLight,
                design: .rounded))
    }
}

