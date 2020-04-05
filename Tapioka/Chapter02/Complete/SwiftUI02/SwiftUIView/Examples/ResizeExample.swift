import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("face_icon_image")
            .resizable()
            .frame(width: 300.0 ,height: 120.0 )

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

struct ResizeExample: View {
    var body: some View {
        ContentView()
    }
}

struct ResizeExample_Previews: PreviewProvider {
    static var previews: some View {
        ResizeExample()
    }
}

