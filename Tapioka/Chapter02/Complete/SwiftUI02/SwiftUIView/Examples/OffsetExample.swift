import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .frame(width:150, height: 30)
            .border(Color.red)
            .offset(x: 50, y: 50)

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

struct OffsetExample: View {
    var body: some View {
        ContentView()
    }
}

struct OffsetExample_Previews: PreviewProvider {
    static var previews: some View {
        OffsetExample()
    }
}

