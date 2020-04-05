import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            Image("face_icon_image")
            Image(uiImage: UIImage(named: "face_icon_image")!)
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

struct ImageViewExample: View {
    var body: some View {
        ContentView()
    }
}

struct ImageViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewExample()
    }
}

