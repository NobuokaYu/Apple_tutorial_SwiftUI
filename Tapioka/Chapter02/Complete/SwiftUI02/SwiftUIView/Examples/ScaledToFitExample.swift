import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("face_icon_image")
            .resizable()
            .scaledToFit()
            .frame(width: 300 ,height: 120)

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

struct ScaledToFitExample: View {
    var body: some View {
        ContentView()
    }
}

struct ScaledToFitExample_Previews: PreviewProvider {
    static var previews: some View {
        ScaledToFitExample()
    }
}

