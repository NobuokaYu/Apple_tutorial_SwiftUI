import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("sakura_image")
            .mask(Image("hacking_to_the_swift"))

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

struct MaskExample1: View {
    var body: some View {
        ContentView()
    }
}

struct MaskExample1_Previews: PreviewProvider {
    static var previews: some View {
        MaskExample1()
    }
}

