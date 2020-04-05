import SwiftUI

fileprivate
struct ContentView : View {
    var body: some View {
        Text("Hello SwiftUI")
            .font(.largeTitle)
            .foregroundColor(Color.red)
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

struct ContentView3: View {
    var body: some View {
        ContentView()
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}

