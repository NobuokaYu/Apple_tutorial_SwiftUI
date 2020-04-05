import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image(systemName: "circle.grid.hex.fill")
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

struct SystemNameExample1: View {
    var body: some View {
        ContentView()
    }
}

struct SystemNameExample1_Previews: PreviewProvider {
    static var previews: some View {
        SystemNameExample1()
    }
}

