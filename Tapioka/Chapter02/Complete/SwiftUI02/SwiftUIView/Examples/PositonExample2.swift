import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .position(x: 120, y: 150)
            .border(Color.red, width: 5)
            .frame(width: 200, height: 200)

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

struct PositonExample2: View {
    var body: some View {
        ContentView()
    }
}

struct PositonExample2_Previews: PreviewProvider {
    static var previews: some View {
        PositonExample2()
    }
}

