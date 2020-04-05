import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .frame(width: 120, height: 100)
            .border(Color.blue, width: 2)

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

struct BorderExample: View {
    var body: some View {
        ContentView()
    }
}

struct BorderExample_Previews: PreviewProvider {
    static var previews: some View {
        BorderExample()
    }
}

