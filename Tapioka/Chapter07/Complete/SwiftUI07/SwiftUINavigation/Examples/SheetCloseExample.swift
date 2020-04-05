import SwiftUI

fileprivate
struct ContentView: View {
    @State var showingDetail = false
    
    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("モーダル表示")
        }.sheet(isPresented: $showingDetail) {
            ModalCloseView()
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

struct SheetCloseExample: View {
    var body: some View {
        ContentView()
    }
}

struct SheetCloseExample_Previews: PreviewProvider {
    static var previews: some View {
        SheetCloseExample()
    }
}

