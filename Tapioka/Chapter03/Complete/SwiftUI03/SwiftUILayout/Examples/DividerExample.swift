import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World!")
            Divider()
            Text("SwiftUI!")
            
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

struct DividerExample: View {
    var body: some View {
        ContentView()
    }
}

struct DividerExample_Previews: PreviewProvider {
    static var previews: some View {
        DividerExample()
    }
}
