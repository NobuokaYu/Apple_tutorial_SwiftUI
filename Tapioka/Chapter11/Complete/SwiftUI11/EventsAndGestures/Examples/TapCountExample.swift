import SwiftUI

fileprivate
struct ContentView: View {
    @State var showImage = false
    
    var body: some View {
        HStack {
            Text("ここをダブルタップ")
                .onTapGesture(count: 2) {
                    self.showImage.toggle()
                }
            if showImage {
                Image(systemName: "star")
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

struct TapCountExample: View {
    var body: some View {
        ContentView()
    }
}

struct TapCountExample_Previews: PreviewProvider {
    static var previews: some View {
        TapCountExample()
    }
}

