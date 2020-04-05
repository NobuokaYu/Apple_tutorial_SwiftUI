import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        List {
            Text("壱岐島")
            Text("伊々")
            Text("ターリー屋")
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

struct StaticListExample: View {
    var body: some View {
        ContentView()
    }
}

struct StaticListExample_Previews: PreviewProvider {
    static var previews: some View {
        StaticListExample()
    }
}

