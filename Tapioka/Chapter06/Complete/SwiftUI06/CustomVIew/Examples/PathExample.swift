import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(x: 0,
                           y: 0,
                           width: 200,
                           height: 100))
        }.fill(Color.pink)
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

struct PathExample: View {
    var body: some View {
        ContentView()
    }
}

struct PathExample_Previews: PreviewProvider {
    static var previews: some View {
        PathExample()
    }
}

