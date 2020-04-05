import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("これは非常に長い文字列で、幅広いスマートフォンにも収まりません。")
            .font(.largeTitle)
            .lineSpacing(50)

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

struct LineSpacingExample: View {
    var body: some View {
        ContentView()
    }
}

struct LineSpacingExample_Previews: PreviewProvider {
    static var previews: some View {
        LineSpacingExample()
    }
}

