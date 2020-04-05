import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.imageScale) var envImageScale
    var body: some View {
        VStack {
            if envImageScale == .large {
                Text("imageScale: large")
            } else if envImageScale == .small {
                Text("imageScale: small")
            } else {
                Text("imageScale: medium")
            }
            Image(systemName: "star.fill")
                .foregroundColor(.pink)
            Text("imageScale: small")
            Image(systemName: "star.fill")
                .imageScale(.small)
                .foregroundColor(.pink)
        }
    }
}
/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.imageScale, .large)
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentImageScaleExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentImageScaleExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentImageScaleExample()
            .environment(\.imageScale, .large)
    }
}

