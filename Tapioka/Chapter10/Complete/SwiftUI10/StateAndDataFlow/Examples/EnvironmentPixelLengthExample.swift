import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.pixelLength) var envPixelLength
    var body: some View {
        Text("pixelLength: \(envPixelLength)")
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

struct EnvironmentPixelLengthExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentPixelLengthExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentPixelLengthExample()
    }
}

