import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .padding()
            .foregroundColor(.yellow)
            .background(Color.black)
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

struct ForegroundTextExample: View {
    var body: some View {
        ContentView()
    }
}

struct ForegroundTextExample_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundTextExample()
    }
}

