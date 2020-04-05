import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .position(x: 150, y: 150)
            .border(Color.red, width: 5)

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

struct PositionExample: View {
    var body: some View {
        ContentView()
    }
}

struct PositionExample_Previews: PreviewProvider {
    static var previews: some View {
        PositionExample()
    }
}

