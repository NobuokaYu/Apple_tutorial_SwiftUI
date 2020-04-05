import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello SwiftUI!")
               .navigationBarTitle("小さなNavigationタイトル",
                                   displayMode: .inline)
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

struct InlineExample: View {
    var body: some View {
        ContentView()
    }
}

struct InlineExample_Previews: PreviewProvider {
    static var previews: some View {
        InlineExample()
    }
}

