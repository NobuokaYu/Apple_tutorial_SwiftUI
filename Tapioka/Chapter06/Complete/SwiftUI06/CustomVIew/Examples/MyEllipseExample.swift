import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        MyEllipse()
            .fill(Color.pink)
            .frame(width: 200, height: 100)
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

struct MyEllipseExample: View {
    var body: some View {
        ContentView()
    }
}

struct MyEllipseExample_Previews: PreviewProvider {
    static var previews: some View {
        MyEllipseExample()
    }
}

