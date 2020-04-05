import SwiftUI

fileprivate
struct ContentView: View {
    @State private var showingSwiftUI = false
    
    var body: some View {
        ZStack {
            VStack {
                Toggle(isOn: $showingSwiftUI
                    .animation()
                ) {
                    Text("Transition(scale)")
                }.padding()
                Spacer()
            }

            if showingSwiftUI {
                Image("big-image")
                    .transition(.scale)
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

struct TransitionAnimationExampleScale: View {
    var body: some View {
        ContentView()
    }
}

struct TransitionAnimationExampleScale_Previews: PreviewProvider {
    static var previews: some View {
        TransitionAnimationExampleScale()
    }
}

