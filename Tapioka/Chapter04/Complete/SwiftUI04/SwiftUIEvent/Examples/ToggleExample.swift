import SwiftUI

fileprivate
struct ContentView: View {
    @State var showText = false
    var body: some View {
        VStack {
            Toggle(isOn: $showText) {
                Text("テキストを表示する")
            }
            if showText {
                Text("Hello World!")
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

struct ToggleExample: View {
    var body: some View {
        ContentView()
    }
}

struct ToggleExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExample()
    }
}

