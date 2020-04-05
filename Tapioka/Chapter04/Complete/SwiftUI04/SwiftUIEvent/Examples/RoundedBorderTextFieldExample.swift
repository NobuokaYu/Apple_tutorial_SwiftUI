import SwiftUI

fileprivate
struct ContentView: View {
    @State var name = ""

    var body: some View {
        VStack {
            TextField("氏名を入力してください", text: $name)
                .textFieldStyle(
                    RoundedBorderTextFieldStyle()
                )
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

struct RoundedBorderTextFieldExample: View {
    var body: some View {
        ContentView()
    }
}

struct RoundedBorderTextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        RoundedBorderTextFieldExample()
            .padding()
    }
}

