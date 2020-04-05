import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("face_icon_image")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 120)

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

struct ScaledToFill: View {
    var body: some View {
        ContentView()
    }
}

struct ScaledToFill_Previews: PreviewProvider {
    static var previews: some View {
        ScaledToFill()
    }
}

