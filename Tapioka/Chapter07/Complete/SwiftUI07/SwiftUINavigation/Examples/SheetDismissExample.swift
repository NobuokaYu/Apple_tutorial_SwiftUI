import SwiftUI

fileprivate
struct ContentView: View {
    @State var showingDetail = false
    @State var message = ""

    var body: some View {
        VStack {
            Button(action: { self.showingDetail.toggle() }) {
                Text("モーダル表示")
            }.sheet(isPresented: $showingDetail,
                    onDismiss: {
                        self.message = "モーダル画面を閉じました" }) {
                ModalView()
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

struct SheetDismissExample: View {
    var body: some View {
        ContentView()
    }
}

struct SheetDismissExample_Previews: PreviewProvider {
    static var previews: some View {
        SheetDismissExample()
    }
}

