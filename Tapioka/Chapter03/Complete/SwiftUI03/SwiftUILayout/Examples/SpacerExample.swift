import SwiftUI

fileprivate
struct ContentView : View {
    var body: some View {
        HStack {
            Spacer()
            Text("Hello World!")
            Spacer()
            Text("SwiftUI!")
            Spacer()
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

struct SpacerExample: View {
    var body: some View {
        ContentView()
    }
}

struct SpacerExample_Previews: PreviewProvider {
    static var previews: some View {
        SpacerExample()
    }
}
