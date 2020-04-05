import SwiftUI

fileprivate
struct ContentView: View {
    @State var satur = 2.0
    @State var contrast = 0.3
    var body: some View {
        VStack {
            Image("big-image")
                .saturation(satur)
            VStack(alignment:.leading) {
                Text("彩度:\(satur)")
                Slider(value: $satur, in: 0...2)
            }
            Image("big-image")
                .contrast(contrast)
            VStack(alignment:.leading) {
                Text("コンストラスト:\(contrast)")
                Slider(value: $contrast, in: -4...4)
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

struct EffectContrastEtcExample: View {
    var body: some View {
        ContentView()
    }
}

struct EffectContrastEtcExample_Previews: PreviewProvider {
    static var previews: some View {
        EffectContrastEtcExample()
    }
}

