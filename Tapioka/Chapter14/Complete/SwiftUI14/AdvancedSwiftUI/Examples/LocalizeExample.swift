import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello SwiftUI!")
            Text(verbatim: "Hello SwiftUI!")
        }
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

struct LocalizeExample: View {
    var body: some View {
        ContentView()
    }
}

struct LocalizeExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LocalizeExample()
                .environment(\.locale, Locale(identifier: "en_US"))
            LocalizeExample()
                .environment(\.locale, Locale(identifier: "ja_JP"))
        }
    }
}

