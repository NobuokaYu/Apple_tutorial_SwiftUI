import SwiftUI

fileprivate
struct ContentView: View {
    @State private var showingSwiftUI = false

    var body: some View {

        VStack {
            Toggle(isOn: $showingSwiftUI
                .animation(.spring(response: 0.1,
                                   dampingFraction: 0.1,
                                   blendDuration: 0))){
                Text("Animetion Toggle label")
            }

            if showingSwiftUI {
                Text("Hello SwiftUI!")
            }
        }.padding()
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

struct BindingAnimationSpringExample: View {
    var body: some View {
        ContentView()
    }
}

struct BindingAnimationSpringExample_Previews: PreviewProvider {
    static var previews: some View {
        BindingAnimationSpringExample()
    }
}

