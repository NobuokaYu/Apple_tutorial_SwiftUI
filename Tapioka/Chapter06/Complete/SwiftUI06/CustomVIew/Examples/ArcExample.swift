import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        ZStack {
            ArcShape(-90,  45).fill(Color.green)
            ArcShape( 45, 150).fill(Color.blue)
            ArcShape(150, 230).fill(Color.purple)
            ArcShape(230, 260).fill(Color.yellow)
            ArcShape(260, 270).fill(Color.pink)
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

struct ArcExample: View {
    var body: some View {
        ContentView()
    }
}

struct ArcExample_Previews: PreviewProvider {
    static var previews: some View {
        ArcExample()
    }
}

