import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text(String(repeating: "Hello World ",
                    count: 20))
            .lineLimit(1)
            .truncationMode(.middle)

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

struct TruncationMode: View {
    var body: some View {
        ContentView()
    }
}

struct TruncationMode_Previews: PreviewProvider {
    static var previews: some View {
        TruncationMode()
    }
}

