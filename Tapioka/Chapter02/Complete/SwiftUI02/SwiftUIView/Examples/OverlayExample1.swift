import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .background(Color.yellow)
            .overlay(
                Color.green
                    .offset(x:10,y:10))
            .overlay(
                Text("Hacking to the Swift")
                    .background(Color.pink)
                    .offset(x:20,y:20))

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

struct OverlayExample1: View {
    var body: some View {
        ContentView()
    }
}

struct OverlayExample1_Previews: PreviewProvider {
    static var previews: some View {
        OverlayExample1()
    }
}

