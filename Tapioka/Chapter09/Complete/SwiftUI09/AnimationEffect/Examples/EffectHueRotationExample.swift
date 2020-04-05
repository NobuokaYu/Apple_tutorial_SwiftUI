//

import SwiftUI

fileprivate
struct ContentView: View {
    @State var angle:Double = -150
    var body: some View {
        VStack {
            Image("big-image")
                .hueRotation(.init(degrees: angle))
            VStack(alignment:.leading) {
                Text("色相:\(angle)")
                Slider(value: $angle, in: -180...180)
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

struct EffectHueRotationExample: View {
    var body: some View {
        ContentView()
    }
}

struct EffectHueRotationExample_Previews: PreviewProvider {
    static var previews: some View {
        EffectHueRotationExample()
    }
}
