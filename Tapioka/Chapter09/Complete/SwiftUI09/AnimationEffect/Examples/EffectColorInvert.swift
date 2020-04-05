//

import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("big-image")
            .colorInvert()
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

struct EffectColorInvert: View {
    var body: some View {
        ContentView()
    }
}

struct EffectColorInvert_Previews: PreviewProvider {
    static var previews: some View {
        EffectColorInvert()
    }
}
