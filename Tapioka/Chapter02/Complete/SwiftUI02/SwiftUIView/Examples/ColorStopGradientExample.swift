import SwiftUI
fileprivate
let gradientStop = Gradient(stops: [
    .init(color: .red, location: 0.0),
    .init(color: .white, location: 0.3),
    .init(color: .green, location: 1.0)
])

fileprivate
let linearStop =  LinearGradient(gradient: gradientStop,
                                 startPoint: .trailing,
                                 endPoint: .leading)


fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hacking to the Swift!")
        .padding()
        .background(linearStop)
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

struct ColorStopGradientExample: View {
    var body: some View {
        ContentView()
    }
}

struct ColorStopGradientExample_Previews: PreviewProvider {
    static var previews: some View {
        ColorStopGradientExample()
    }
}

