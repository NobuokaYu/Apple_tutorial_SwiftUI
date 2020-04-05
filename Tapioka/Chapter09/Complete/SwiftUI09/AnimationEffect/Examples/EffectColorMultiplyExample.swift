//

import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("big-image")
           .colorMultiply(.red)
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

struct EffectColorMultiplyExample: View {
    var body: some View {
        ContentView()
    }
}

struct EffectColorMultiplyExample_Previews: PreviewProvider {
    static var previews: some View {
        EffectColorMultiplyExample()
    }
}
