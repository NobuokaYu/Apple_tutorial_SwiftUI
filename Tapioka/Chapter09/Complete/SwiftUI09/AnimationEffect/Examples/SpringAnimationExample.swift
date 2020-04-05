//

import SwiftUI

fileprivate
struct ContentView: View {
    @State private var angle: Double = 0

    var body: some View {
        VStack(spacing:40) {
            Button(action: { self.angle += 45 }) {
                Text("回転！")
            }

            Text("減衰スプリングモデル")
                .padding()
                .rotationEffect(.degrees(angle))
                .animation(.interpolatingSpring(stiffness: 10,
                                                damping: 1) )

            Text("通常のバネアニメーション")
                .padding()
                .rotationEffect(.degrees(angle))
                .animation(.spring())
        
            Text("少しだけきびきび動くアニメーション")
                .padding()
                .rotationEffect(.degrees(angle))
                .animation(.interactiveSpring())
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

struct SpringAnimationExample: View {
    var body: some View {
        ContentView()
    }
}

struct SpringAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimationExample()
    }
}
