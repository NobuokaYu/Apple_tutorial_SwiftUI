import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        if Bool.random() {
            return Text("あなたの勝ちです！")
        } else {
            return Text("コンピュータの勝ちです！")
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

struct IfStatementExample: View {
    var body: some View {
        ContentView()
    }
}

struct IfStatementExample_Previews: PreviewProvider {
    static var previews: some View {
        IfStatementExample()
    }
}
