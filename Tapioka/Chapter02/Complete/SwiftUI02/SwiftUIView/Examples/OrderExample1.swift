import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .padding()
            .background(Color.purple)

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

struct OrderExample1: View {
    var body: some View {
        ContentView()
    }
}

struct OrderExample1_Previews: PreviewProvider {
    static var previews: some View {
        OrderExample1()
    }
}

