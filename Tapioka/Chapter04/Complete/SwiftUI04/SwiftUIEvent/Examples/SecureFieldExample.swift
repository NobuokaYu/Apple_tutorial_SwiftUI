import SwiftUI

fileprivate
struct ContentView: View {
    @State var pwd = ""

    var body: some View {
        VStack {
            SecureField("パスワードを入力してください", text: $pwd)
            Text("パスワードは\(pwd)")
        }.padding()
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

struct SecureFieldExample: View {
    var body: some View {
        ContentView()
    }
}

struct SecureFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldExample()
    }
}

