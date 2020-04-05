import SwiftUI

fileprivate
struct ContentView: View {
    @State var showingAlert = false
    var body: some View {
        
        Button(action: {
            self.showingAlert = true
        }) {
            Text("アラートを表示")
        }
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("質問"),
                message: Text("あなたはどちらの動物に近いですか？"),
                primaryButton: .destructive(Text("ネコ")),
                secondaryButton: .cancel(Text("イヌ")))
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

struct AlertButtonExample: View {
    var body: some View {
        ContentView()
    }
}

struct AlertButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertButtonExample()
    }
}

