import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            LinesShape()
                .fill(Color.yellow)
                .frame(width: 300, height: 300)
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

struct AddLinesExample: View {
    var body: some View {
        ContentView()
    }
}

struct AddLinesExample_Previews: PreviewProvider {
    static var previews: some View {
        AddLinesExample()
    }
}

