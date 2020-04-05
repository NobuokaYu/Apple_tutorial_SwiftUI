import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack{
            Color("my_primary")
            Color("my_secondary")
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

struct ColorResourcesExample: View {
    var body: some View {
        ContentView()
    }
}

struct ColorResourcesExample_Previews: PreviewProvider {
    static var previews: some View {
        ColorResourcesExample()
    }
}

