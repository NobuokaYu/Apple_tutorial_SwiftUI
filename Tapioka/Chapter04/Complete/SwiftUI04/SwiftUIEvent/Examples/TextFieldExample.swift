import SwiftUI

fileprivate
struct ContentView: View {
    @State var name = ""

    var body: some View {
        VStack {
            TextField("氏名を入力してください", text: $name)
            Text("こんにちは！\(name)")
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

struct TextFieldExample: View {
    var body: some View {
        ContentView()
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}

