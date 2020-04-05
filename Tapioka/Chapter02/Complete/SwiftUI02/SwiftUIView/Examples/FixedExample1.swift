import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("この一行テキスト、枠に収まらないぞ。")
            .frame(width: 200, height: 20)

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

struct FixedExample1: View {
    var body: some View {
        ContentView()
    }
}

struct FixedExample1_Previews: PreviewProvider {
    static var previews: some View {
        FixedExample1()
    }
}

