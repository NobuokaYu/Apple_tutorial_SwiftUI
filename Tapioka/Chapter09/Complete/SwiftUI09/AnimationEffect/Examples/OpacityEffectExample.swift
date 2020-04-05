//

import SwiftUI

fileprivate
struct ContentView: View {
    @State var opacity = 1.0
    var body: some View {
        VStack {
            Image("big-image")
                .opacity(opacity)
            
            VStack(alignment:.leading) {
                Text("x\(opacity)")
                Slider(value: $opacity,
                       in: 0...1)
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

struct OpacityEffectExample: View {
    var body: some View {
        ContentView()
    }
}

struct OpacityEffectExample_Previews: PreviewProvider {
    static var previews: some View {
        OpacityEffectExample()
    }
}
