import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello SwiftUI!")
                .font(.largeTitle)
                .foregroundColor(.yellow)
                .shadow(radius: 2)
            Text("Hello SwiftUI!")
                .font(.largeTitle)
                .foregroundColor(.yellow)
                .shadow(color: .black,
                        radius: 2,
                        x: 4,
                        y: 3)
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

struct EffectShadowExample: View {
    var body: some View {
        ContentView()
    }
}

struct EffectShadowExample_Previews: PreviewProvider {
    static var previews: some View {
        EffectShadowExample()
    }
}
