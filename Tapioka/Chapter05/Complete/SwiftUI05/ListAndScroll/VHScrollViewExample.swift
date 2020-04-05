import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            ScrollView(.vertical) {
                Image("flavor1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 1000)
            }.edgesIgnoringSafeArea(.all)
        }.edgesIgnoringSafeArea(.all)
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

struct VHScrollViewExample: View {
    var body: some View {
        ContentView()
    }
}

struct VHScrollViewExample_Previews: PreviewProvider {
    static var previews: some View {
        VHScrollViewExample()
    }
}

