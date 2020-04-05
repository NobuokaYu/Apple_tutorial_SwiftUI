import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        HStack {
            Text("Hello World!")
            Text("Hello SwiftUI!")
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

struct HStackExample: View {
    var body: some View {
        ContentView()
    }
}

struct HStackExample_Previews: PreviewProvider {
    static var previews: some View {
        HStackExample()
    }
}
