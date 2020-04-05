import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Group{
            if Bool.random() {
                Image("win-image")
            } else {
                Text("コンピュータの勝ちです！")
            }
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

struct IfStatementExample2: View {
    var body: some View {
        ContentView()
    }
}

struct IfStatementExample2_Previews: PreviewProvider {
    static var previews: some View {
        IfStatementExample2()
    }
}
