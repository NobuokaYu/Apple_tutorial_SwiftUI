import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.locale, Locale(identifier: "en_US"))
            ContentView()
                .environment(\.locale, Locale(identifier: "ja_JP"))
        }
    }
}
*/


// MARK: サンプル実行用コード

struct HelloExample: View {
    var body: some View {
        ContentView()
    }
}

struct HelloExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HelloExample()
                .environment(\.locale, Locale(identifier: "en_US"))
            HelloExample()
                .environment(\.locale, Locale(identifier: "ja_JP"))
        }
    }
}

