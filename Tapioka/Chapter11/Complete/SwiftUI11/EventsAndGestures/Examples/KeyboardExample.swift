import SwiftUI

fileprivate
struct ContentView: View {

    @ObservedObject var keyboard = KeyboardObserver()
    @State var inputText = ""
    var body: some View {
        VStack {
            Spacer()
            Image("big-image")
            TextField("テキスト入力", text: $inputText).padding()
        }.onAppear {
            self.keyboard.startObserve()
        }.onDisappear {
            self.keyboard.stopObserve()
        }.padding(.bottom, keyboard.keyboardHeight)
            .animation(.easeOut)
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

struct KeyboardExample: View {
    var body: some View {
        ContentView()
    }
}

struct KeyboardExample_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardExample()
    }
}
