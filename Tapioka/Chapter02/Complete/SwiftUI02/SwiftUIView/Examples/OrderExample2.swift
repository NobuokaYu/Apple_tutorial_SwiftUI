import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .background(Color.purple)
            .padding()

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

struct OrderExample2: View {
    var body: some View {
        ContentView()
    }
}

struct OrderExample2_Previews: PreviewProvider {
    static var previews: some View {
        OrderExample2()
    }
}

