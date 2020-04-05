import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            ViewBuilder.buildBlock(Text("Hello World!"),
                                   Text("Hello SwiftUI!"))
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

struct BuildBlockExample: View {
    var body: some View {
        ContentView()
    }
}

struct BuildBlockExample_Previews: PreviewProvider {
    static var previews: some View {
        BuildBlockExample()
    }
}

