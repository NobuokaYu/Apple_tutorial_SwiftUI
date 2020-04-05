//

import SwiftUI

fileprivate
struct ContentView: View {
    @State var radius:CGFloat = 3.0
    var body: some View {
        VStack {
            Spacer()
            Image("big-image")
                .frame(height: 100)
                .clipped()
            Image("swift-logo")
            Divider()
            ZStack {
                Image("big-image")
                    .frame(height: 100)
                    .clipped()
                Image("swift-logo")
                    .blendMode(BlendMode.multiply)
            }
            Spacer()
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

struct EffectBlendMultiplyExample: View {
    var body: some View {
        ContentView()
    }
}

struct EffectBlendMultiplyExample_Previews: PreviewProvider {
    static var previews: some View {
        EffectBlendMultiplyExample()
    }
}

