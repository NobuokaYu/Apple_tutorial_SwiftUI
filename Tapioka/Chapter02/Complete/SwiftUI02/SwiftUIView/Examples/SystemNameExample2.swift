import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image(systemName: "circle.grid.hex.fill")
            .font(.largeTitle)
            .foregroundColor(.orange)

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

struct SystemNameExample2: View {
    var body: some View {
        ContentView()
    }
}

struct SystemNameExample2_Previews: PreviewProvider {
    static var previews: some View {
        SystemNameExample2()
    }
}

