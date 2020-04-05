import SwiftUI

fileprivate
struct ContentView: View {
    @State var showImage = false

    var body: some View {
        HStack {
            Text("ここをタップ")
                .onTapGesture {
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

struct TapExample: View {
    var body: some View {
        ContentView()
    }
}

struct TapExample_Previews: PreviewProvider {
    static var previews: some View {
        TapExample()
    }
}

