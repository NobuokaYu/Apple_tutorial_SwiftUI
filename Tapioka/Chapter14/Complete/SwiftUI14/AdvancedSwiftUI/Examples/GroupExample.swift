import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            Group {
                Text("Hello World! 1")
                Text("Hello World! 2")
                Text("Hello World! 3")
                Text("Hello World! 4")
                Text("Hello World! 5")
                Text("Hello World! 6")
                Text("Hello World! 7")
                Text("Hello World! 8")
                Text("Hello World! 9")
                Text("Hello World!10")
            }
            Group{
                Text("Hello World!11")
                Text("Hello World!12")
            }
        }
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

struct GroupExample: View {
    var body: some View {
        ContentView()
    }
}

struct GroupExample_Previews: PreviewProvider {
    static var previews: some View {
        GroupExample()
    }
}

