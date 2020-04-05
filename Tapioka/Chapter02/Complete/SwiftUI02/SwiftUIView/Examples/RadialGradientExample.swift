import SwiftUI

fileprivate
let spectrum = Gradient(colors: [
    .red, .yellow, .green, .blue, .purple, .red
])


fileprivate
let radial = RadialGradient(gradient: spectrum,
                            center: .center,
                            startRadius:0,
                            endRadius:70)

fileprivate
struct ContentView: View {
    var body: some View {
        Rectangle()
            .fill(radial)
            .frame(width: 100, height: 100)

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

struct RadialGradientExample: View {
    var body: some View {
        ContentView()
    }
}

struct RadialGradientExample_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradientExample()
    }
}

