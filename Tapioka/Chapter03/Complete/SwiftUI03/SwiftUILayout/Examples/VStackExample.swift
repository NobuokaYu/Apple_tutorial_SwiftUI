import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
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

struct VStackExample: View {
    var body: some View {
        ContentView()
    }
}

struct VStackExample_Previews: PreviewProvider {
    static var previews: some View {
        VStackExample()
    }
}
