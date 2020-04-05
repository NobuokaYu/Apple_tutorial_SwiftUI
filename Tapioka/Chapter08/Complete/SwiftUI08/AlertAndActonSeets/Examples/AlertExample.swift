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
            Alert(title: Text("警告"),
                  message: Text("今日は紫外線が強いので日焼け止め必須です"),
                  dismissButton: .default(Text("わかったよ！")))
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

struct AlertExample: View {
    var body: some View {
        ContentView()
    }
}

struct AlertExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertExample()
    }
}

