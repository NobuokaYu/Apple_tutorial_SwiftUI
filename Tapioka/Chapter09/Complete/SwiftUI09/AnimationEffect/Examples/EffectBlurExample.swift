//

import SwiftUI

fileprivate
struct ContentView: View {
    @State var radius: CGFloat = 3.0

    var body: some View {
        VStack {
            Spacer()
            Image("big-image")
                .blur(radius: radius)
            Text("Hello SwiftUI!")
                .font(.largeTitle)
                .blur(radius: radius)
            VStack(alignment:.leading) {
                Text("x\(radius)")
                Slider(value: $radius,
                       in: 0...20)
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

struct EffectBlurExample: View {
    var body: some View {
        ContentView()
    }
}

struct EffectBlurExample_Previews: PreviewProvider {
    static var previews: some View {
        EffectBlurExample()
    }
}
