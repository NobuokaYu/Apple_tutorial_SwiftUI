import SwiftUI

fileprivate
struct ContentView: View {
    @State var showingSheet = false

    var body: some View {
        Button(action: {
            self.showingSheet = true
        }) {
            Text("アクションシート表示")
        }
        .actionSheet(isPresented: $showingSheet) {
            ActionSheet(title: Text("質問"),
                        message: Text("絶対に失いたくないものはなに？"),
                        buttons: [
                            .default(Text("お金")),
                            .default(Text("自由")),
                            .destructive(Text("家族")),
                            .destructive(Text("仲間")),
                            .cancel(Text("キャンセル")),
                        ])
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

struct ActonSheetExample: View {
    var body: some View {
        ContentView()
    }
}

struct ActonSheetExample_Previews: PreviewProvider {
    static var previews: some View {
        ActonSheetExample()
    }
}

