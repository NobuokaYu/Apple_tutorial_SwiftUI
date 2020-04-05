import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .foregroundColor(Color.white)
            .background(Color.black)
            .padding(.init(top:      10,
                           leading:  30,
                           bottom:   90,
                           trailing: 70))
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

struct EdgeInsetsExample: View {
    var body: some View {
        ContentView()
    }
}

struct EdgeInsetsExample_Previews: PreviewProvider {
    static var previews: some View {
        EdgeInsetsExample()
    }
}

