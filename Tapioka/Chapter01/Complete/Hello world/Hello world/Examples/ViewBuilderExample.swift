import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            ViewBuilder.buildBlock(Text("Hello SwiftUI!"),
                                   Text("Hello World!"))
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

struct ViewBuilderExample: View {
    var body: some View {
        ContentView()
    }
}

struct ViewBuilderExample_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderExample()
    }
}

