import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .foregroundColor(.white)
            .background(Color.black)
            .padding(50)
            .background(Color.yellow)

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

struct PaddingExample: View {
    var body: some View {
        ContentView()
    }
}

struct PaddingExample_Previews: PreviewProvider {
    static var previews: some View {
        PaddingExample()
    }
}

