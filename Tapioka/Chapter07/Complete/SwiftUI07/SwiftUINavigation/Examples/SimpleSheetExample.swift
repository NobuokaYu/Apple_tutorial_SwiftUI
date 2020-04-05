import SwiftUI

fileprivate
struct ContentView: View {
    @State var showingDetail = false

    var body: some View {
        Button(action: { self.showingDetail.toggle() }) {
            Text("モーダル表示")
        }.sheet(isPresented: $showingDetail) {
            ModalView()
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

struct SimpleSheetExample: View {
    var body: some View {
        ContentView()
    }
}

struct SimpleSheetExample_Previews: PreviewProvider {
    static var previews: some View {
        SimpleSheetExample()
    }
}

