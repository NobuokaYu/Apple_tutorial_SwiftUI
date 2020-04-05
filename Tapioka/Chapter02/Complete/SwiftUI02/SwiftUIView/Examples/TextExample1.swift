import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text(String(repeating: "Hello World ",
                    count: 20))

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

struct TextExample1: View {
    var body: some View {
        ContentView()
    }
}

struct TextExample1_Previews: PreviewProvider {
    static var previews: some View {
        TextExample1()
    }
}

