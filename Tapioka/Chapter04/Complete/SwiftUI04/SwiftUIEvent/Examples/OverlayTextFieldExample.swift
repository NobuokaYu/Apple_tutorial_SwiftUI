import SwiftUI

fileprivate
struct ContentView: View {
    @State var name = ""

    var body: some View {
        VStack {
            TextField("氏名を入力してください", text: $name)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.blue, lineWidth: 1)
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

struct OverlayTextFieldExample: View {
    var body: some View {
        ContentView()
    }
}

struct OverlayTextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        OverlayTextFieldExample()
            .padding()
    }
}

