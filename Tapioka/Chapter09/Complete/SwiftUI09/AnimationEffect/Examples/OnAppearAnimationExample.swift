import SwiftUI

fileprivate
struct ContentView: View {
    @State var satur = 0.0
    var body: some View {
        Image("big-image")
            .saturation(satur)
            .animation(.linear(duration: 5))
            .onAppear {
                self.satur = 2.0
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

struct OnAppearAnimationExample: View {
    var body: some View {
        ContentView()
    }
}

struct OnAppearAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearAnimationExample()
    }
}

