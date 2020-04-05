import SwiftUI
fileprivate
let spectrum = Gradient(colors: [
    .red, .yellow, .green, .blue, .purple, .red
    ])
fileprivate
let conic = AngularGradient(gradient: spectrum, center: .center,
                            angle: .degrees(-90))


fileprivate
struct ContentView: View {
    var body: some View {
        Text("Hello World!")
            .foregroundColor(.white)
            .frame(width: 100.0, height: 100.0)
            .background(conic)

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

struct AngularGradientExample: View {
    var body: some View {
        ContentView()
    }
}

struct AngularGradientExample_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientExample()
    }
}

