import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.presentationMode) var envMode
    var isPresented:Bool { envMode.wrappedValue.isPresented }
    var body: some View {
        VStack {
            Text("presentationMode: \( isPresented ? "True" : "False")")
            if isPresented {
                Button(action: {
                    self.envMode.wrappedValue.dismiss()
                }) {
                    Text("戻る")
                }
            }
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationLink(destination: ContentView()) {
                Text("画面を開く")
            }
        }
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentPresentationModeExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentPresentationModeExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationLink(destination: EnvironmentPresentationModeExample()) {
                Text("画面を開く")
            }
        }
    }
}

