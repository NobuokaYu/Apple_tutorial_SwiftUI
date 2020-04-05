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
                    Text("Transition")
                }.padding()
                Spacer()
            }

            if showingSwiftUI {
                Image("big-image")
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

struct TransitionAnimationExample: View {
    var body: some View {
        ContentView()
    }
}

struct TransitionAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        TransitionAnimationExample()
    }
}

