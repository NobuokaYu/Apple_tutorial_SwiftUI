import SwiftUI

fileprivate
struct ContentView: View {
    @State var showingSheet = false
    @State var message = ""

    var body: some View {
        VStack {
            Button(action: {
                self.showingSheet = true
            }) {
                Text("アクションシート表示")
            }
            .actionSheet(isPresented: $showingSheet) {
                ActionSheet(
                    title: Text("Siri"),
                    message: Text("最高に面白いネタを思いつきました。"),
                    buttons: [
                        .default(Text("言ってみて！")){
                            self.message
                                = "私の言うことは支離滅裂ですよ"
                                + "・・・Siriだけに。"
                        },
                        .cancel(Text("結構です")){
                            self.message = "はい、わかりました。"
                        },
                    ])
            }
            Text(message)
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

struct ActionSheetOnClickExample: View {
    var body: some View {
        ContentView()
    }
}

struct ActionSheetOnClickExample_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetOnClickExample()
    }
}
