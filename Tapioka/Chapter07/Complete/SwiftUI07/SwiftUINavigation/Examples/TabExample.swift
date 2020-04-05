import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        TabView {
            Text("FirstContent")
                .tabItem { Text("First") }
            Text("SecondContent")
                .tabItem { Text("Second") }
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

struct TabExample: View {
    var body: some View {
        ContentView()
    }
}

struct TabExample_Previews: PreviewProvider {
    static var previews: some View {
        TabExample()
    }
}

