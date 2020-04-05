import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello World!")
            .foregroundColor(.green)
        + Text("And SwiftUI!")
            .foregroundColor(.orange)
            .font(.system(size: 30))
            .fontWeight(.ultraLight)
        + Text("SwiftUI provides views, controls, ")
            .foregroundColor(.red)
        + Text("and layout structures ")
            .foregroundColor(.gray)
            .fontWeight(.heavy)
        + Text(" for declaring your app's ")
            .foregroundColor(.blue)
        + Text("user interface.")
            .foregroundColor(.purple)
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

struct AddTextExample: View {
    var body: some View {
        ContentView()
    }
}

struct AddTextExample_Previews: PreviewProvider {
    static var previews: some View {
        AddTextExample()
    }
}

