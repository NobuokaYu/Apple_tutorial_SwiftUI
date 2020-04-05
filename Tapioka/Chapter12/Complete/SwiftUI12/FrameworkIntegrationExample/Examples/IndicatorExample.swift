import SwiftUI

fileprivate
struct ContentView: View {
    @State var animating = false
    var body: some View {
        VStack {
            Text("UIActivityIndicatorView")
            ActivityIndicator(animating: .constant(true))
            ActivityIndicator(animating: $animating)
            ActivityIndicator(style: .large,
                                  animating: $animating)
            Toggle(isOn: $animating) {
                Text("インジケータの回転")
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

struct IndicatorExample: View {
    var body: some View {
        ContentView()
    }
}

struct IndicatorExample_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorExample()
    }
}

