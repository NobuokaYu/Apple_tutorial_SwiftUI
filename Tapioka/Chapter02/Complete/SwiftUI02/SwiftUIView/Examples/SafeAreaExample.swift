import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Color(red:0, green: 1, blue: 1)
            .edgesIgnoringSafeArea(.vertical)
            //.edgesIgnoreSafeArea(.vertical)
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

struct SafeAreaExample: View {
    var body: some View {
        ContentView()
    }
}

struct SafeAreaExample_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaExample()
    }
}

