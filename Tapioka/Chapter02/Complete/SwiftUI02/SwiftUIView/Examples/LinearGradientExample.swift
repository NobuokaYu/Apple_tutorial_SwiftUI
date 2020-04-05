import SwiftUI

fileprivate
let gradient = Gradient(colors: [.blue, .white])

fileprivate
let linear = LinearGradient(gradient:gradient,
                            startPoint: .top,
                            endPoint: .bottom)

fileprivate
struct ContentView: View {
    var body: some View {
        Image("face_icon_image")
            .background(linear)

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

struct LinearGradientExample: View {
    var body: some View {
        ContentView()
    }
}

struct LinearGradientExample_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientExample()
    }
}

