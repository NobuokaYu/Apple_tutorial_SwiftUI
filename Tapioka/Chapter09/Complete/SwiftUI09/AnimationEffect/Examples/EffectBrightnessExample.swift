import SwiftUI

fileprivate
struct ContentView: View {
    @State var amount = 0.6
    var body: some View {
        VStack {
            Image("big-image")
                .brightness(amount)
            VStack(alignment:.leading) {
                Text("明度:\(amount)")
                Slider(value: $amount, in: -1...1)
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

struct EffectBrightnessExample: View {
    var body: some View {
        ContentView()
    }
}

struct EffectBrightnessExample_Previews: PreviewProvider {
    static var previews: some View {
        EffectBrightnessExample()
    }
}

