import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("sakura_image")
            .mask(Color(red:     0.0,
                        green:   0.0,
                        blue:    0.0,
                        opacity: 0.3))

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

struct MaskExample2: View {
    var body: some View {
        ContentView()
    }
}

struct MaskExample2_Previews: PreviewProvider {
    static var previews: some View {
        MaskExample2()
    }
}

